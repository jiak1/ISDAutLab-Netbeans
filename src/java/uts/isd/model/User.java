/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.model;

import java.io.Serializable;

public class User implements Serializable {
    private String email;
    private String name;
    private String phone;
    private String password;
    private String gender;
    private String favCol;
    
    public User(){}
    
    public User(String email, String name, String phone, String password, String gender, String favCol){
        this.email = email;
        this.name = name;
        this.phone = phone;
        this.password = password;
        this.gender = gender;
        this.favCol = favCol;
    }
    
    public void setEmail(String value){
        this.email = value;
    }
    
    public String getEmail(){
        return this.email;
    }
    
        public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFavCol() {
        return favCol;
    }

    public void setFavCol(String favCol) {
        this.favCol = favCol;
    }
}
