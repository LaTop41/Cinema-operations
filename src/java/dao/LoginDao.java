/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;
import bp.Konekcija;
import beans.Korisnik;

/**
 *
 * @author Luka
 */
public class LoginDao {
    
	private Konekcija connection = null;

	public LoginDao() {
		connection = new Konekcija();
	}
	

	
	public boolean login(Korisnik loginer){
		boolean oznaka=false;
		if(loginer!=null){
			String sql="select * from korisnik where username='"+loginer.getUsername()+"' and password='"+loginer.getPassword()+"'";
			ResultSet rs=connection.executeQuery(sql);
			try {
				if(rs!=null&&rs.next()){
					loginer.setKorisnikId(rs.getString("korisnik_ID"));
					loginer.setPol(rs.getString("pol"));
					loginer.setTelefon(rs.getString("telefon"));
					loginer.setEmail(rs.getString("email"));
                                        loginer.setIme(rs.getString("ime"));
					loginer.setPrezime(rs.getString("prezime"));
                                        loginer.setUserType(rs.getString("userType"));
					
					oznaka=true;
                                        
                          
				}
				else
					oznaka=false;
			} catch (SQLException e) {
				oznaka=false;
				e.printStackTrace();
			}
			try {
				rs.close();
				connection.closed();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return oznaka;		
	}
}

