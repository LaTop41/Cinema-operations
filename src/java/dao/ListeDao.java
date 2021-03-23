/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Korisnik;
import beans.Narudzbenica;
import bp.Konekcija;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author Luka
 */
public class ListeDao {
    
    private Konekcija connection = null;

	public ListeDao() {
		connection = new Konekcija();
	}
    
    
    public ArrayList<Korisnik> getMenadzere() {
		ArrayList<Korisnik> menadzerList = null;
                
		
		String sql = "select * from korisnik where userType='menadzer'";
		ResultSet rs = connection.executeQuery(sql);
		if (rs != null) {
			menadzerList = new ArrayList<Korisnik>();
			try {
				while (rs.next()) {
					Korisnik korisnik  = new Korisnik();

					
					
					korisnik.setKorisnikId(rs.getString("korisnik_ID"));
					korisnik.setIme(rs.getString("ime"));
					korisnik.setPrezime(rs.getString("prezime"));
					korisnik.setTelefon(rs.getString("telefon"));
                                          korisnik.setUserType(rs.getString("userType"));
                                        korisnik.setEmail(rs.getString("email"));
					korisnik.setPol(rs.getString("pol"));
                                        korisnik.setUsername(rs.getString("userName"));
                                        korisnik.setPassword(rs.getString("password"));
					

					menadzerList.add(korisnik);
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		} else {
			System.out.println("Greska!");
		}
		return menadzerList;

	}
    public ArrayList<Korisnik> getKorisnike() {
		ArrayList<Korisnik> korisnikList = null;
                
		
		String sql = "select * from korisnik where userType='korisnik'";
		ResultSet rs = connection.executeQuery(sql);
		if (rs != null) {
			korisnikList = new ArrayList<Korisnik>();
			try {
				while (rs.next()) {
					Korisnik korisnik  = new Korisnik();

					
					
					korisnik.setKorisnikId(rs.getString("korisnik_ID"));
					korisnik.setIme(rs.getString("ime"));
					korisnik.setPrezime(rs.getString("prezime"));
					korisnik.setTelefon(rs.getString("telefon"));
                                          korisnik.setUserType(rs.getString("userType"));
                                        korisnik.setEmail(rs.getString("email"));
					korisnik.setPol(rs.getString("pol"));
                                        korisnik.setUsername(rs.getString("userName"));
                                        korisnik.setPassword(rs.getString("password"));
					

					korisnikList.add(korisnik);
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		} else {
			System.out.println("Greska!");
		}
		return korisnikList;

	}
    
    public ArrayList<Narudzbenica> getRezervacije() {
		ArrayList<Narudzbenica> rezervacijaList = null;
                
		
		String sql = "SELECT narudzbe.narudzbe_ID,narudzbe.film_ID,film.film, korisnik.ime,korisnik.prezime, narudzbe.sediste_ID,narudzbe.datum,narudzbe.ukupnaCena FROM narudzbe,korisnik,film "
                        + "WHERE narudzbe.korisnik_ID=korisnik.korisnik_ID and narudzbe.film_ID=film.film_ID";
		ResultSet rs = connection.executeQuery(sql);
		if (rs != null) {
			rezervacijaList = new ArrayList<Narudzbenica>();
			try {
				while (rs.next()) {
					Narudzbenica rezervacija  = new Narudzbenica();

					
					
					rezervacija.setNarudzbenicaId(rs.getString("narudzbe_ID"));
					rezervacija.setIme(rs.getString("ime"));
					rezervacija.setPrezime(rs.getString("prezime"));
                                        rezervacija.setFilm(rs.getString("film"));
					rezervacija.setSedisteId(rs.getString("sediste_ID"));
                                          rezervacija.setDatum(rs.getString("datum"));
                                        rezervacija.setUkupnaCena(rs.getString("ukupnaCena"));
					
					

					rezervacijaList.add(rezervacija);
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		} else {
			System.out.println("Greska!");
		}
		return rezervacijaList;

	}
    
    
}
