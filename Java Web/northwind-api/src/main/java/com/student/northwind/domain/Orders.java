package com.student.northwind.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Orders")
@Getter
@Setter
public class Orders {
    @Id
    @Column(name = "OrderID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int orderID;
//    @Column(name = "customerID")
//    private int customerID;
//    @Column(name = "EmployeeID")
//    private int employeeID;
    @Column(name = "OrderDate")
    private LocalDate orderDate;
    @Column(name = "RequireDate")
    private LocalDate requiredDate;
    @Column(name = "ShippedDate")
    private LocalDate shippedDate;
    @Column(name = "ShipVia")
    private String shipVia;
    @Column(name = "Freight")
    private String freight;
    @Column(name = "ShipName")
    private String shipName;
    @Column(name = "ShipAddress")
    private String shipAddress;
    @Column(name = "ShipCity")
    private String shipCity;
    @Column(name = "ShipRegion")
    private String shipRegion;
    @Column(name = "ShipPostalCode")
    private String shipPostalCode;
    @Column(name = "ShipCountry")
    private String shipCountry;


    @ManyToOne
    private Shippers shippers;

    @ManyToOne
    @JoinColumn(name = "EmployeeID", referencedColumnName = "EmployeeID")
    private Employees employees;

    @ManyToOne
    private Employees employee;

    @ManyToOne
    @JoinColumn(name = "CustomerID", referencedColumnName = "CustomerID")
    private Customers customer;

//    @OneToMany(fetch = FetchType.LAZY, mappedBy = "order")
//    private List<OrderDetails> orderDetailsList = new ArrayList<>();
}
