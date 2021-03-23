/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Film;
import beans.FilmMain;
import beans.Korisnik;
import bp.Konekcija;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Luka
 */
public class AdminDao {
    private Konekcija connection = null;
    
    public AdminDao() {
		connection = new Konekcija();
	}
    
    public boolean dodajPrikazivanje(FilmMain prikazivanje) {

	boolean oznaka;
                
                   
		String sql = "insert into detaljifilma(film_ID, sala_ID, bioskop, cena, datumvreme) value("
				+ prikazivanje.getFilmId()
				+ ","
				+ prikazivanje.getSalaId()
				+ ",'"
				+ prikazivanje.getBioskop()
				+ "',"
				+ prikazivanje.getCena()
                                + "',"
				+ prikazivanje.getDatumvreme()
				+ ")";
                oznaka = connection.executeUpdate(sql);
                

                
	 return oznaka;	
		
    }
    

 }
    


