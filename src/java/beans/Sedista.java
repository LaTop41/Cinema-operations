/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Luka
 */
public class Sedista {
    private int sedisteId = 0;
        private String detaljiId ;
       
	private int red = 0;
	private int kolona = 0;
	private boolean rezervisano = false;

    /**
     * @return the sedisteId
     */
    public int getSedisteId() {
        return sedisteId;
    }

    /**
     * @param sedisteId the sedisteId to set
     */
    public void setSedisteId(int sedisteId) {
        this.sedisteId = sedisteId;
    }

    /**
     * @return the detaljiId
     */
    public String getDetaljiId() {
        return detaljiId;
    }

    /**
     * @param detaljiId the detaljiId to set
     */
    public void setDetaljiId(String detaljiId) {
        this.detaljiId = detaljiId;
    }

    /**
     * @return the red
     */
    public int getRed() {
        return red;
    }

    /**
     * @param red the red to set
     */
    public void setRed(int red) {
        this.red = red;
    }

    /**
     * @return the kolona
     */
    public int getKolona() {
        return kolona;
    }

    /**
     * @param kolona the kolona to set
     */
    public void setKolona(int kolona) {
        this.kolona = kolona;
    }

    /**
     * @return the rezervisano
     */
    public boolean isRezervisano() {
        return rezervisano;
    }

    /**
     * @param rezervisano the rezervisano to set
     */
    public void setRezervisano(boolean rezervisano) {
        this.rezervisano = rezervisano;
    }

    /**
     * @return the filmId
     */
   
        
        
}
