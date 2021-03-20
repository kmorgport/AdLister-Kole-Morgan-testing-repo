package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private double price;
    private String title;
    private String description;

    public Ad(){}

    public Ad(long id, long userId, String title, Double price, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.price = price;
        this.description = description;
    }

    public Ad(long userId, double price, String title, String description){
        this.userId = userId;
        this.price = price;
        this.title = title;
        this.description = description;
    }


//    public Ad(long userId, String title, String description) {
//        this.userId = userId;
//        this.title = title;
//        this.description = description;
//    }

    public double getPrice(){
        return this.price;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
