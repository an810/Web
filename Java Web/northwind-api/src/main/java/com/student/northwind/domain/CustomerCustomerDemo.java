package com.student.northwind.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "CustomerCustomerDemo")
@Getter
@Setter
public class CustomerCustomerDemo {
//    @Id
//    @Column(name = "CustomerID")
//    private int customerID;

//    @Column(name = "CustomerTypeID")
//    private int customerTypeID;
    @ManyToOne
    @JoinColumn(name = "CustomerTypeID", referencedColumnName = "CustomerTypeID")
    private CustomerDemographics customerDemographics;

    @ManyToOne
    @JoinColumn(name = "CustomerID", referencedColumnName = "CustomerID")
    private Customers customers;
}
