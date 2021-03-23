package dao;

import bp.Konekcija;
import java.sql.ResultSet;
import java.util.ArrayList;



import beans.Film;
import beans.Narudzbenica;
import java.sql.SQLException;

public class NarudzbenicaDao {
	private Konekcija connection = null;

	public NarudzbenicaDao() {
		connection = new Konekcija();
	}

	public boolean addNarudzbu(Narudzbenica narudzbenica) {

		boolean oznaka;
		String sql = "insert into narudzbe(korisnik_ID, film_ID, sediste_ID, datum, ukupnaCena) value("+ narudzbenica.getKorisnikId()+ ","+ narudzbenica.getFilmId()+ ","+ narudzbenica.getSedisteId()
				+ ",'"+ narudzbenica.getDatum()+ "',"+ narudzbenica.getUkupnaCena()+ ")";
		
		oznaka = connection.executeUpdate(sql);
                
		return oznaka;

	}

	
	public ArrayList<Narudzbenica> getNarudzbu(String korisnikId) {
		ArrayList<Narudzbenica> narudzbenicaList = null;
		Narudzbenica narudzbenica = null;
		String sql = "select * from narudzbe where korisnik_ID="+ korisnikId;
		ResultSet rs = connection.executeQuery(sql);
		if (rs != null) {
			narudzbenicaList = new ArrayList<Narudzbenica>();
			try {
				while (rs.next()) {
					narudzbenica = new Narudzbenica();

					narudzbenica.setKorisnikId(korisnikId);
					;
					narudzbenica.setNarudzbenicaId(rs.getString("narudzbe_ID"));
					narudzbenica.setSedisteId(rs.getString("sediste_ID"));
					narudzbenica.setDatum(rs.getString("datum"));
					narudzbenica.setUkupnaCena(rs.getString("ukupnaCena"));
					

					narudzbenicaList.add(narudzbenica);
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
		} else {
			System.out.println("Greska!");
		}
		return narudzbenicaList;

	}
}