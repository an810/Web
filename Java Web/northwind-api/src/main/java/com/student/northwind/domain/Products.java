package com.student.northwind.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Products")
@Getter
@Setter
public class Products {
    @Id
    @Column(name = "ProductID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productID;
    @Column(name = "ProductName")
    private String productName;
//    @Column(name = "SupplierID")
//    private int supplierID;
//    @Column(name = "CategoryID")
//    private int categoryID;
    @Column(name = "QuantityPerUnit")
    private int quantityPerUnit;
    @Column(name = "UnitPrice")
    private double unitPrice;
    @Column(name = "UnitsInStock")
    private int unitsInStock;
    @Column(name = "UnitsOnOrder")
    private int unitsOnOrder;
    @Column(name = "ReorderLevel")
    private int reorderLevel;
    @Column(name = "Discontinued")
    private int discontinued;

    @OneToMany(mappedBy = "product")
    private List<OrderDetails> orderDetailsList = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "SupplierID", referencedColumnName = "SupplierID")
    private Suppliers supplier;

    @ManyToOne
    @JoinColumn(name = "CategoryID", referencedColumnName = "CategoryID")
    private Categories category;
}
