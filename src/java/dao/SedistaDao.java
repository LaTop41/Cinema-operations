
package dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import bp.Konekcija;
import beans.Sedista;
import java.sql.SQLException;

public class SedistaDao {
	private Konekcija connection = null;

	public SedistaDao() {
		connection = new Konekcija();
	}

	
	public ArrayList<Sedista> slobodnaSedista(String detaljiId) {
		ArrayList<Sedista> listaSed = null;
		Sedista sedista = null;
		String sql = "select * from sedista where detalji_ID="+ detaljiId + " order by red asc, kolona asc;";
		ResultSet rs = connection.executeQuery(sql);
		if (rs != null) {
			listaSed = new ArrayList<Sedista>();

			try {
				while (rs.next()) {
					sedista = new Sedista();

					sedista.setSedisteId(rs.getInt("sediste_ID"));
					sedista.setRed(rs.getInt("red"));
					sedista.setKolona(rs.getInt("kolona"));
					sedista.setRezervisano(rs.getBoolean("rezervisano"));

					listaSed.add(sedista);
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			} try {
				rs.close();
				connection.closed();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return listaSed;

	}

	
	 
	public boolean promeniStanje(String detaljiId, String red,String kolona) {
		String sql = "update sedista set rezervisano=1 where detalji_ID="+ detaljiId+ " and red="+ red+ " and kolona=" + kolona;
		if (connection.executeUpdate(sql)) {
			return true;
		} else {
			
			return false;
		}

	}
	
	
	
	public String getSedisteId(String detaljiId, String red,String kolona) {
		String sedisteId = "";
		String sql = "select * from sedista where detalji_ID="+ detaljiId + " and red=" + red+ " and kolona=" + kolona;
		ResultSet rs = connection.executeQuery(sql);
		
		if (rs != null) {
			try {
				if (rs.next()) {
					sedisteId = rs.getString("sediste_ID");
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			} try {
				rs.close();
				connection.closed();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return sedisteId;
	}
}

