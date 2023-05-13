package com.student.northwind.domain;

import javax.persistence.*;

@Entity
public class CustomerDemographics {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int customerTypeID;
    @Column
    private String customerDesc;

    public CustomerDemographics() {
    }

    public int getCustomerTypeID() {
        return customerTypeID;
    }

    public void setCustomerTypeID(int customerTypeID) {
        this.customerTypeID = customerTypeID;
    }

    public String getCustomerDesc() {
        return customerDesc;
    }

    public void setCustomerDesc(String customerDesc) {
        this.customerDesc = customerDesc;
    }
}
