/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package boston;

import java.io.InputStream;

public class Trader {
    private String firstname;
    private String lastname;
    private String username;
    private String email;
    private String password;
    private String foodtrade;
    private String neighborhood;
    private InputStream profileImage = null;
    private Integer trader_id;

    

    public Trader(String firstname, String lastname, String email, String password, String foodtrade, String neighborhood) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.password = password;
        this.foodtrade = foodtrade;
        this.neighborhood = neighborhood;
    }
    
    public Integer getTrader_id() {
        return trader_id;
    }

    public void setTrader_id(Integer trader_id) {
        this.trader_id = trader_id;
    }
    
    public void setUserPicture(InputStream is){
        profileImage = is;
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public InputStream getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(InputStream profileImage) {
        this.profileImage = profileImage;
    }
    
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFoodtrade() {
        return foodtrade;
    }

    public void setFoodtrade(String foodtrade) {
        this.foodtrade = foodtrade;
    }

    public String getNeighborhood() {
        return neighborhood;
    }

    public void setNeighborhood(String neighborhood) {
        this.neighborhood = neighborhood;
    }

    
}
