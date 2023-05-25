package com.student.northwind.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "Territories")
@Getter
@Setter
public class Territories {
    @Id
    @Column(name = "TerritoryID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int territoryID;
    @Column(name = "TerritoryDescription")
    private String territoryDescription;

//    @Column(name = "RegionID")
//    private int regionID;
    @ManyToOne
    @JoinColumn(name = "RegionID", referencedColumnName = "RegionID")
    private Region region;


}
