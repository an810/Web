package com.student.northwind.domain;

import lombok.Getter;
import lombok.Setter;


import javax.annotation.processing.Generated;
import javax.persistence.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Employees")
@Getter
@Setter
public class Employees {
    @Id
    @Column(name = "EmployeeID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int employeeID;
    @Column(name = "LastName")
    private String lastName;
    @Column(name = "FirstName")
    private String firstName;
    @Column(name = "Title")
    private String title;
    @Column(name = "TitleOfCourtesy")
    private String titleOfCourtesy;
    @Column(name = "BirthDate")
    private LocalDate birthDate;
    @Column(name = "HireDate")
    private LocalDate hireDate;
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
    @Column(name = "HomePhone")
    private String homePhone;
    @Column(name = "Extension")
    private String extension;
    @Column(name = "Photo")
    private String photo;
    @Column(name = "Notes")
    private String notes;
    @Column(name = "ReportsTo")
    private String reportsTo;
    @Column(name = "PhotoPath")
    private String photoPath;


    @ManyToMany
    @JoinTable(
            name = "EmployeeTerritories",
            joinColumns = { @JoinColumn(name= "EmployeeID", referencedColumnName= "EmployeeID") },
            inverseJoinColumns = { @JoinColumn(name= "TerritoryID", referencedColumnName= "TerritoryID") }
    )
    private List<Territories> territoriesList = new ArrayList<>();

    @OneToMany(mappedBy = "employees")
    private List<Employees> employeesList = new ArrayList<>();

    @ManyToOne
    private Employees employees;

    @OneToMany(mappedBy = "employee")
    private List<Orders> ordersList = new ArrayList<>();

}
