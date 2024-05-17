package com.educative.ecommerce.model;


import javax.persistence.*;
import java.util.ArrayList;


@Entity
@Table(name = "Customer_Orders")
public class CustomerOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer order_id;

    private String token;
    private Double totalPrice;
    private ArrayList<Integer> prodIDs;
    private ArrayList<Integer> quantities;
    private String country;
    private String province;
    private String subrub;
    private String city;
    private String streetName;
    private Integer areaCode;


    public CustomerOrder() {
    }

    public CustomerOrder(String token, Double totalPrice, ArrayList<Integer> prodIDs, ArrayList<Integer> quantities, String country, String province, String subrub, String city, String name, Integer areaCode) {
        this.token = token;
        this.totalPrice = totalPrice;
        this.prodIDs = prodIDs;
        this.quantities = quantities;
        this.country = country;
        this.province = province;
        this.subrub = subrub;
        this.city = city;
        this.streetName = streetName;
        this.areaCode = areaCode;
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public ArrayList<Integer> getProdIDs() {
        return prodIDs;
    }

    public void setProdIDs(ArrayList<Integer> prodIDs) {
        this.prodIDs = prodIDs;
    }

    public ArrayList<Integer> getQuantities() {
        return quantities;
    }

    public void setQuantities(ArrayList<Integer> quantities) {
        this.quantities = quantities;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getSubrub() {
        return subrub;
    }

    public void setSubrub(String subrub) {
        this.subrub = subrub;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public Integer getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(Integer areaCode) {
        this.areaCode = areaCode;
    }
}
