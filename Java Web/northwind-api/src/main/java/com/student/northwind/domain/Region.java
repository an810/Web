package com.student.northwind.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "Region")
@Getter
@Setter
public class Region {
    @Id
    @Column(name = "RegionID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int regionID;
    @Column(name = "RegionDescription")
    private String regionDescription;

    @OneToMany(mappedBy = "region")
    private List<Territories> territoriesList = new ArrayList<>();

}
