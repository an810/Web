package com.student.northwind.domain;

import javax.persistence.*;

@Entity
public class Territories {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int territoryID;
    @Column
    private String territoryDescription;
    @Column
    private int regionID;

    public Territories() {
    }

    public int getTerritoryID() {
        return territoryID;
    }

    public void setTerritoryID(int territoryID) {
        this.territoryID = territoryID;
    }

    public String getTerritoryDescription() {
        return territoryDescription;
    }

    public void setTerritoryDescription(String territoryDescription) {
        this.territoryDescription = territoryDescription;
    }

    public int getRegionID() {
        return regionID;
    }

    public void setRegionID(int regionID) {
        this.regionID = regionID;
    }
}
