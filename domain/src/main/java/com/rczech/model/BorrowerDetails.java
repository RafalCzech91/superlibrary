package com.rczech.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class BorrowerDetails {

    @Id
    private int idBorrowerDetails;

    private String address;

    private String email;

    private String phone;


    //TODO generate contructor
    // & geter and setter


    }