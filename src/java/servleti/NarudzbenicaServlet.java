
  
package servleti;


import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.SedistaDao;

import beans.Korisnik;
import beans.Narudzbenica;
import beans.FilmMain;
import dao.NarudzbenicaDao;
import java.util.ArrayList;

public class NarudzbenicaServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null)
			action = "";
		if (action.equals("generisiNarudzbu")) {
			this.generisiNarudzbu(request, response);
		}if
		 (action.equals("prikaziNarudzbe")) {
			this.prikaziNarudzbe(request, response);
		}
	}

        
	
	public void generisiNarudzbu(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Narudzbenica narudzbenica = new Narudzbenica();
		
		FilmMain detalji = (FilmMain) request.getSession().getAttribute("detalji");
		Korisnik loginer = (Korisnik) request.getSession().getAttribute("loginer");

		narudzbenica.setSedisteId(new SedistaDao().getSedisteId(
                                detalji.getDetaljiId(),
				request.getParameter("red"),
				request.getParameter("kolona")));
                narudzbenica.setFilmId(detalji.getFilmId());
		narudzbenica.setKorisnikId(loginer.getKorisnikId());
		narudzbenica.setUkupnaCena(detalji.getCena());
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
		narudzbenica.setDatum(sdf.format(date));

		
		boolean oznaka;
		NarudzbenicaDao narudzbaDao = new NarudzbenicaDao();
		oznaka = narudzbaDao.addNarudzbu(narudzbenica);
		
		if (oznaka) {
			request.setAttribute("poruka", "order succeed");
		} else {
			request.setAttribute("poruka", "order fail");
		}
		RequestDispatcher rd = request.getRequestDispatcher("rezultat.jsp");
		rd.forward(request, response);

	}
	
	
	public void prikaziNarudzbe(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Narudzbenica> narudzbenicaList = new ArrayList<Narudzbenica>();
		
		NarudzbenicaDao narudzbenicaDao = new NarudzbenicaDao();
		narudzbenicaList = narudzbenicaDao.getNarudzbu(((Korisnik)request.getSession().getAttribute("loginer")).getKorisnikId());
		
		request.setAttribute("narudzbenicaList", narudzbenicaList);
		RequestDispatcher rd = request.getRequestDispatcher("rezervacije.jsp");
		rd.forward(request, response);
	}

}
