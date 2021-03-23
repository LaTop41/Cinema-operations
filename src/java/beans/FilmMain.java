/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.sql.Timestamp;

/**
 *
 * @author Luka
 */
public class FilmMain {
    private String detaljiId ;
	private String filmId ;
	private String salaId ;
	private String bioskop;
	private Timestamp datumvreme ;
	private String cena ;
        
        
        
        public FilmMain(){
            detaljiId="";
            filmId ="";       
            salaId="";        
            bioskop="";    
            datumvreme=null;        
            cena  ="";      
                    
        }
        
        public FilmMain(String detaljiId, String filmId,String salaId, String bioskop,  Timestamp datumvreme, String cena)
        {
            this.detaljiId = detaljiId;
            this.filmId = filmId;
            this.salaId = salaId;
            this.bioskop = bioskop;
          
            this.datumvreme = datumvreme;
            this.cena = cena;
        }

    /**
     * @return the repertoarId
     */
    public String getDetaljiId() {
        return detaljiId;
    }

    /**
     * @param repertoarId the repertoarId to set
     */
    public void setDetaljiId(String detaljiId) {
        this.detaljiId = detaljiId;
    }

    /**
     * @return the filmId
     */
    public String getFilmId() {
        return filmId;
    }

    /**
     * @param filmId the filmId to set
     */
    public void setFilmId(String filmId) {
        this.filmId = filmId;
    }

    /**
     * @return the salaId
     */
    public String getSalaId() {
        return salaId;
    }

    /**
     * @param salaId the salaId to set
     */
    public void setSalaId(String salaId) {
        this.salaId = salaId;
    }

    /**
     * @return the bioskopId
     */
    public String getBioskop() {
        return bioskop;
    }

    /**
     * @param bioskopId the bioskopId to set
     */
    public void setBioskop(String bioskop) {
        this.bioskop = bioskop;
    }

    

    /**
     * @return the cena
     */
    public String getCena() {
        return cena;
    }

    /**
     * @param cena the cena to set
     */
    public void setCena(String cena) {
        this.cena = cena;
    }

    /**
     * @return the datumvreme
     */
    public Timestamp getDatumvreme() {
        return datumvreme;
    }

    /**
     * @param datumvreme the datumvreme to set
     */
    public void setDatumvreme(Timestamp datumvreme) {
        this.datumvreme = datumvreme;
    }

    
        
        
}
