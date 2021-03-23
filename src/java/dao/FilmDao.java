/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.awt.List;
import java.lang.reflect.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import bp.Konekcija;
import beans.Film;
import beans.FilmMain;
//import valuebean.RunningMovieBean;
public class FilmDao {
	private Konekcija connection = null;
	
	public FilmDao() {
		connection = new Konekcija();
	}
	
	
	public ArrayList<Film> prikaziSveFilmove() {
		ArrayList<Film> lista = null;
		Film  film = null;
		String sql = "select * from film";
		ResultSet rs = connection.executeQuery(sql);
		if (rs != null) {
			lista = new ArrayList<Film>();
			try {
				while(rs.next()){
					film = new Film();
					
					film.setFilmId(rs.getString("film_ID"));
					film.setFilm(rs.getString("film"));
                                        film.setTrajanje(rs.getString("trajanje"));
					film.setGodina(rs.getString("godina"));
					film.setZanr(rs.getString("zanr"));
					film.setReziser(rs.getString("reziser"));
                                        film.setTehnologija(rs.getString("tehnologija"));
					film.setGlumac(rs.getString("glumci"));
					film.setOpis(rs.getString("opis"));
                                        film.setVideo(rs.getString("video"));
					lista.add(film);
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			}
                        try {
				rs.close();
				connection.closed();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		else {
			System.out.println("Prazno");
		}
		return lista;
	}
	
	
	public ArrayList<FilmMain> prikaziDetaljeFilma(String filmId) {
		ArrayList<FilmMain> detaljiLista = null;
		FilmMain detalji = null;
		String sql = "select * from detaljifilma where film_ID=" + filmId +"";
		ResultSet rs = connection.executeQuery(sql);
		if (rs != null) {
			detaljiLista = new ArrayList<FilmMain>();
			try {
				while (rs.next()){
					detalji = new FilmMain();
					
					detalji.setDetaljiId(rs.getString("detalji_ID"));
					detalji.setFilmId(rs.getString("film_ID"));
					detalji.setSalaId(rs.getString("sala_ID"));
                                        detalji.setBioskop(rs.getString("bioskop"));
					detalji.setDatumvreme(rs.getTimestamp("datumvreme"));
					detalji.setCena(rs.getString("cena"));
					
					detaljiLista.add(detalji);
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			}
                        try {
				rs.close();
				connection.closed();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		return detaljiLista;
	}
	
	
	public FilmMain getDetalji( String detaljiId){
		FilmMain detalji = null;
		String sql = "select * from detaljifilma where detalji_ID=" + detaljiId;
		ResultSet rs = connection.executeQuery(sql);
		if (rs!= null) {
			detalji = new FilmMain();
			try {
				if (rs.next()) {
					detalji.setDetaljiId(rs.getString("detalji_ID"));
					detalji.setFilmId(rs.getString("film_ID"));
					detalji.setSalaId(rs.getString("sala_ID"));
					detalji.setCena(rs.getString("cena"));
					detalji.setDatumvreme(rs.getTimestamp("datumvreme"));
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
                        try {
				rs.close();
				connection.closed();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return detalji;
		
	}
}