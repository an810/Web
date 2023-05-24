package com.student.northwind.domain;

import javax.persistence.*;

@Entity
@Table(name = "Categories")
public class Categories {
    @Id
    @Column(name = "CategoryID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int categoryID;
    @Column(name = "CategoryName")
    private String categoryName;
    @Column(name = "Description")
    private String description;
    @Column(name = "Picture")
    private String picture;

    public Categories() {
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}
