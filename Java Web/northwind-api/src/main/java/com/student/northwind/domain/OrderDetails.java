package com.student.northwind.domain;

import org.checkerframework.checker.units.qual.C;

import javax.persistence.*;

@Entity
@Table(name = "OrderDetails")
public class OrderDetails {
    @Id
    @Column(name = "OrderID")
    private int orderID;
    @Column(name = "ProductID")
    private int productID;
    @Column(name = "UnitPrice")
    private double unitPrice;
    @Column(name = "Quantity")
    private int quantity;
    @Column(name = "Discount")
    private double discount;

    public OrderDetails() {
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }
}
