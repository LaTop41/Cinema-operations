
  
package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.interfaces.RSAKey;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Film;
import beans.FilmMain;
import beans.Sedista;
import dao.FilmDao;
import dao.SedistaDao;
import javax.servlet.http.HttpSession;

public class SedistaServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null)
			action = "";
		if (action.equals("slobodnaSedista")) {
			this.slobodnaSedista(request, response);
		}
		if (action.equals("odaberiSediste")) {
			this.odaberiSediste(request, response);
		}
	}

	
	public void slobodnaSedista(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String detaljiId = request.getParameter("detalji_ID");
		HttpSession session = request.getSession();
			session.setAttribute("detaljiId", detaljiId);
		FilmDao filmDao = new FilmDao();
		FilmMain detalji = filmDao.getDetalji(detaljiId);
		request.getSession().setAttribute("detalji", detalji);
		
		SedistaDao sedisteDao = new SedistaDao();
		ArrayList<Sedista> sedistaList = sedisteDao.slobodnaSedista(detaljiId);
		
		request.setAttribute("sedistaList", sedistaList);
		RequestDispatcher rd = request.getRequestDispatcher("sedista.jsp");
		rd.forward(request, response);
	}

	
	public void odaberiSediste(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		if (request.getSession().getAttribute("username") == null) {
			request.setAttribute("poruka", "Morate se ulogovati!");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else {
			
			String detaljiId = (String) request.getSession().getAttribute("detaljiId");
			String red = request.getParameter("red");
			String kolona = request.getParameter("kolona");
			SedistaDao sedistaDao = new SedistaDao();
			sedistaDao.promeniStanje(detaljiId, red, kolona);
			
			String sedisteId = sedistaDao.getSedisteId(detaljiId, red,kolona);
			request.setAttribute("sedisteId", sedisteId);
			RequestDispatcher rd = request.getRequestDispatcher("NarudzbenicaServlet?action=generisiNarudzbu&sedisteId="+ sedisteId);
			rd.forward(request, response);
		}

	}

}
