package com.example.search.bean;

public class DishDetails {
    private  int id;
    private String classify;
    private String name;
    private String introduce;
    private String imageUrl;
    private double price;

    public DishDetails() {
    }

    public DishDetails(int id, String classify, String name, String introduce, String imageUrl, double price) {
        this.id = id;
        this.classify = classify;
        this.name = name;
        this.introduce = introduce;
        this.imageUrl = imageUrl;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
