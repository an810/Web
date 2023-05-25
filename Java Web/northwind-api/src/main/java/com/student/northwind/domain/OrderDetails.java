package com.student.northwind.domain;

import lombok.Getter;
import lombok.Setter;
import org.checkerframework.checker.units.qual.C;
import org.hibernate.criterion.Order;

import javax.persistence.*;

@Entity
@Table(name = "Order Details")
@Getter
@Setter
public class OrderDetails {
//    @Id
//    @Column(name = "OrderID")
//    private int orderID;
//    @Column(name = "ProductID")
//    private int productID;
    @Column(name = "UnitPrice")
    private double unitPrice;
    @Column(name = "Quantity")
    private int quantity;
    @Column(name = "Discount")
    private double discount;

    @ManyToOne
    @Id
    @JoinColumn(name = "OrderID", referencedColumnName = "OrderID")
    private Orders order;

    @ManyToOne
    @JoinColumn(name = "ProductID", referencedColumnName = "ProductID")
    private Products product;
}
