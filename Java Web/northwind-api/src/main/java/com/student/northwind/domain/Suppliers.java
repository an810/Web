package com.student.northwind.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Suppliers")
@Getter
@Setter
public class Suppliers {
    @Id
    @Column(name = "SupplierID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int supplierID;
    @Column(name = "CompanyName")
    private String companyName;
    @Column(name = "ContactName")
    private String contactName;
    @Column(name = "ContactTitle")
    private String contactTitle;
    @Column(name = "Address")
    private String address;
    @Column(name = "City")
    private String city;
    @Column(name = "Region")
    private String region;
    @Column(name = "PostalCode")
    private String postalCode;
    @Column(name = "Country")
    private String country;
    @Column(name = "Phone")
    private String phone;
    @Column(name = "Fax")
    private String fax;
    @Column(name = "HomePage")
    private String homePage;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "supplier")
    private List<Products> productsList = new ArrayList<>();

}
