package com.rczech.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Author {

    @Id
    private int idAuthor;

    private String firstName;

    private String lastName;

    private String birthPlace;

    //TODO generate contructor
    // & geter and setter

}