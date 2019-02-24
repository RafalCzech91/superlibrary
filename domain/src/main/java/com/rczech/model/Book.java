package com.rczech.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Book {

    @Id
    private int idBook;

    private boolean borrow;

    private String category;

    private String isbn;

    private int pages;

    Date releaseDate = new Date();

    private String summary;

    private String title;

    private int authorId;

    private String id;

    //TODO generate contructor
    // & geter and setter


}



