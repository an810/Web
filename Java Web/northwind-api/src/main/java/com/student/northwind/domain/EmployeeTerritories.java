package com.student.northwind.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EmployeeTerritories")
public class EmployeeTerritories {
    @Id
    @Column(name = "EmployeeID")
    private int employeeID;
    @Column(name = "TerritoryID")
    private int territoryID;

    public EmployeeTerritories() {
    }

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public int getTerritoryID() {
        return territoryID;
    }

    public void setTerritoryID(int territoryID) {
        this.territoryID = territoryID;
    }
}
