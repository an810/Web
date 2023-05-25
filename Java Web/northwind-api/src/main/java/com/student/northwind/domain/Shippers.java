package com.student.northwind.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Shippers")
@Getter
@Setter
public class Shippers {
    @Id
    @Column(name = "ShipperID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int shipperID;
    @Column(name = "CompanyName")
    private String companyName;
    @Column(name = "Phone")
    private String phone;

    @OneToMany(mappedBy = "shippers")
    private List<Orders> ordersList = new ArrayList<>();


}
