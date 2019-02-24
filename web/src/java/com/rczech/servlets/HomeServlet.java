package com.rczech.servlets;

import com.rczech.services.BookService;
import lombok.extern.slf4j.Slf4j;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/HomeServlest")
@Slf4j
public class HomeServlet extends HttpServlet {

    enum Action {ADD, EDIT, SHOW, DELETE}


    BookService bookService = new BookService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Action action = Action.valueOf(request.getParameter("action"));
        Long bookId = Long.valueOf(request.getParameter("bookId"));

        switch (action) {
            case ADD:
                response.sendRedirect("/AddBookServlet");
                break;

            case EDIT:
                response.sendRedirect("/EditBookServlet?bookId=" + bookId);
                break;

            case SHOW:
                response.sendRedirect("/ShowBookDetailsServlet?bookId=" + bookId);
                break;

            case DELETE:
                bookService.delete(bookId);
                response.sendRedirect("/HomeServlet");
                break;
            default:
                throw new UnsupportedOperationException("no action");
        }
        log.info("You passed through first page");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
