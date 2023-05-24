package com.student.northwind.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CustomerCustomerDemo")
public class CustomerCustomerDemo {
    @Id
    @Column(name = "CustomerID")
    private int customerID;
    @Column(name = "CustomerTypeID")
    private int customerTypeID;

    public CustomerCustomerDemo() {
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getCustomerTypeID() {
        return customerTypeID;
    }

    public void setCustomerTypeID(int customerTypeID) {
        this.customerTypeID = customerTypeID;
    }
}
