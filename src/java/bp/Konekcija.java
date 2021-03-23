/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bp;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author Luka
 */
public class Konekcija {
  
 private final String url = "jdbc:mysql://localhost:3306/bioskop";
    private final String userName = "root";
    private final String password = "";
    private Connection con = null;
    private Statement stm=null;
    
   
    public Konekcija(){
    	try {
    		Class.forName("com.mysql.jdbc.Driver"); 
    	} catch (Exception e) {
    		e.printStackTrace();
    		System.out.println("Nije uspelo učitavanje drajvera!");
    	}    	
    }
   
    public void createCon() {
        try {
            con = DriverManager.getConnection(url, userName, password);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Povezivanje sa bazom nije uspelo!");
        }
    }
   
    public void getStm(){
   		createCon();
    	try {
			stm=con.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Kreiranje Statement-a nije uspelo!");
		}
    }
    /** 
     * Функције Додавање, измена и брисање операција на бази података
        Параметар скл је СКЛ израз који треба извршити
        Врати вредност боолеан валуе
     */
    public boolean executeUpdate(String sql) {
    	System.out.println(sql);
        boolean oznaka=false;
    	try {
    		getStm();
            int broj = stm.executeUpdate(sql);
            if(broj>0)            	
            	oznaka=true;            
            else
            	oznaka=false;
        } catch (Exception e) {
            e.printStackTrace();
		    oznaka=false;
        }
        return oznaka;
    }
   
    public ResultSet executeQuery(String sql) {
        ResultSet rs=null;
        try {
            getStm();
            try {
                rs = stm.executeQuery(sql);
            } catch (Exception e) {
            	e.printStackTrace();
                System.out.println("Upit nije uspeo!");
            }
        } catch (Exception e) {
            e.printStackTrace();          
        }
        return rs;
    }
    
    public void closed() {
    	if(stm!=null)
			try {
				stm.close();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("Close Statement nije izvršen!");
			}
    	if(con!=null)
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("Close Connection nije izvršen！");
			}
    }
}

