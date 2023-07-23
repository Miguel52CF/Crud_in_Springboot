package com.miguel.lenguajes.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "lenguages")
@Getter
@Setter
public class Lenguage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min = 1, max = 200)
    private String name;

    @Size(min = 1, max = 200)
    private String creator;

    private double version;

    public Lenguage(String name, String creator, double version) {
        this.name = name;
        this.creator = creator;
        this.version = version;
    }

    public Lenguage() {
    }
}
