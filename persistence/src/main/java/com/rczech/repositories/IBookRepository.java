package com.rczech.repositories;

import com.rczech.model.Book;

import java.util.List;

public interface IBookRepository {

    List<Book> findAll();

    void save(Book book);

    Book find(Long id);

    void edit(Book book);

    void delete(Long id);


}
