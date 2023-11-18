package com.student.northwind.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "CustomerDemographics")
@Getter
@Setter
public class CustomerDemographics {
    @Id
    @Column(name = "CustomerTypeID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int customerTypeID;
    @Column(name = "CustomerDesc")
    private String customerDesc;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "cusomterDemographics")
    private List<CustomerCustomerDemo> customerCustomerDemoList = new ArrayList<>();

}
