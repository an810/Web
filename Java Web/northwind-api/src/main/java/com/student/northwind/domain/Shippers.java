package com.student.northwind.domain;

import javax.persistence.*;

@Entity
public class Shippers {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int shipperID;
    @Column
    private String companyName;
    @Column
    private String phone;

    public Shippers() {
    }

    public int getShipperID() {
        return shipperID;
    }

    public void setShipperID(int shipperID) {
        this.shipperID = shipperID;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
