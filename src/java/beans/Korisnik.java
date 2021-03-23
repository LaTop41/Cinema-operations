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
public class Korisnik {
      private String korisnikId ;
	private String ime ;
	private String prezime ;
	private String userType;
	private String username ;
	private String password ;
	private String telefon ;
        private String email ;
        private String pol ;
        
        
        public Korisnik(){
            korisnikId ="";
            ime ="";
            prezime ="";
            userType ="";
            username ="";
            password ="";
            telefon ="";
            email ="";
            pol ="";
        }
        
        public Korisnik(String korisnikId, String ime,String prezime, String userType, String username, String password, String telefon,  String email,  String pol)
        {
            this.korisnikId = korisnikId;
            this.ime = ime;
            this.prezime = prezime;
            this.userType = userType;
            this.username = username;
            this.password = password;
            this.telefon = telefon;
            this.email = email;
            this.pol = pol;
        }

   
        
       

    /**
     * @return the korisnikId
     */
    public String getKorisnikId() {
        return korisnikId;
    }

    /**
     * @param korisnikId the korisnikId to set
     */
    public void setKorisnikId(String korisnikId) {
        this.korisnikId = korisnikId;
    }

    /**
     * @return the ime
     */
    public String getIme() {
        return ime;
    }

    /**
     * @param ime the ime to set
     */
    public void setIme(String ime) {
        this.ime = ime;
    }

    /**
     * @return the prezime
     */
    public String getPrezime() {
        return prezime;
    }

    /**
     * @param prezime the prezime to set
     */
    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    /**
     * @return the userType
     */
    public String getUserType() {
        return userType;
    }

    /**
     * @param userType the userType to set
     */
    public void setUserType(String userType) {
        this.userType = userType;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the telefon
     */
    public String getTelefon() {
        return telefon;
    }

    /**
     * @param telefon the telefon to set
     */
    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the pol
     */
    public String getPol() {
        return pol;
    }

    /**
     * @param pol the pol to set
     */
    public void setPol(String pol) {
        this.pol = pol;
    }
        
        
}
