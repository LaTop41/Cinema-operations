
package servleti;

import beans.Korisnik;
import beans.Narudzbenica;
import dao.ListeDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Luka
 */
public class ListeServlet extends HttpServlet {

   
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       doPost(request, response);//OVO SI ZABORAVIO KONJUUUU
    }

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
		if (action == null)
			action = "";
		if (action.equals("menadzeri")) {
			this.menadzeri(request, response);
		}if (action.equals("korisnici")) {
			this.korisnici(request, response);
		}if (action.equals("rezervacije")) {
			this.rezervacije(request, response);
		}
    }
        
    
	public void menadzeri(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		ListeDao listeDao = new ListeDao();
		ArrayList<Korisnik> menadzerList = listeDao.getMenadzere();
		
		request.setAttribute("menadzerList", menadzerList);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/listaMenadzera.jsp");
		rd.forward(request, response);
	}
        
        public void korisnici(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		ListeDao listeDao = new ListeDao();
		ArrayList<Korisnik> korisnikList = listeDao.getKorisnike();
		
		request.setAttribute("korisnikList", korisnikList);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/listaKorisnika.jsp");
		rd.forward(request, response);
	}
        
         public void rezervacije(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		ListeDao listeDao = new ListeDao();
		ArrayList<Narudzbenica> rezervacijaList = listeDao.getRezervacije();
		
		request.setAttribute("rezervacijaList", rezervacijaList);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/listaRezervacija.jsp");
		rd.forward(request, response);
	}
    

}
