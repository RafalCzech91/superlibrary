package com.rczech.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Borrower {

    @Id
    private int idBorrower;

    private String firstName;

    private String lastName;

    private int borrowerDetailsId;

    //TODO generate contructor
    // & geter and setter

}