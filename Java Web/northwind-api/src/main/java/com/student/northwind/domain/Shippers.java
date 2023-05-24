package com.student.northwind.domain;

import javax.persistence.*;

@Entity
@Table(name = "Shippers")
public class Shippers {
    @Id
    @Column(name = "ShipperID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int shipperID;
    @Column(name = "CompanyName")
    private String companyName;
    @Column(name = "Phone")
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
