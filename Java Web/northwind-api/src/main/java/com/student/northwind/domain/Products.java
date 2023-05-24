package com.student.northwind.domain;

import javax.persistence.*;

@Entity
@Table(name = "Products")
public class Products {
    @Id
    @Column(name = "ProductID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productID;
    @Column(name = "ProductName")
    private String productName;
    @Column(name = "SupplierID")
    private int supplierID;
    @Column(name = "CategoryID")
    private int categoryID;
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
    public Products() {

    }
    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getSupplierID() {
        return supplierID;
    }

    public void setSupplierID(int supplierID) {
        this.supplierID = supplierID;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public int getQuantityPerUnit() {
        return quantityPerUnit;
    }

    public void setQuantityPerUnit(int quantityPerUnit) {
        this.quantityPerUnit = quantityPerUnit;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getUnitsInStock() {
        return unitsInStock;
    }

    public void setUnitsInStock(int unitsInStock) {
        this.unitsInStock = unitsInStock;
    }

    public int getUnitsOnOrder() {
        return unitsOnOrder;
    }

    public void setUnitsOnOrder(int unitsOnOrder) {
        this.unitsOnOrder = unitsOnOrder;
    }

    public int getReorderLevel() {
        return reorderLevel;
    }

    public void setReorderLevel(int reorderLevel) {
        this.reorderLevel = reorderLevel;
    }

    public int getDiscontinued() {
        return discontinued;
    }

    public void setDiscontinued(int discontinued) {
        this.discontinued = discontinued;
    }

}
