package com.rczech.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Borrow {

    @Id
    private int idBorrow;

    private int bookId;

    private int borroweId;

    Date rentaldate = new Date();

    //TODO generate contructor
    // & geter and setter

}