package com.student.northwind.domain;

import javax.persistence.*;

@Entity
@Table(name = "Region")
public class Region {
    @Id
    @Column(name = "RegionID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int regionID;
    @Column(name = "RegionDescription")
    private String regionDescription;

    public Region() {
    }

    public int getRegionID() {
        return regionID;
    }

    public void setRegionID(int regionID) {
        this.regionID = regionID;
    }

    public String getRegionDescription() {
        return regionDescription;
    }

    public void setRegionDescription(String regionDescription) {
        this.regionDescription = regionDescription;
    }
}
