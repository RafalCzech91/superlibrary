package com.rczech.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {

    private int button;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        Action action = aCTION.VALUEoF(REQUEST.GETpARAMETER("ACTION"));
//        Long bookId = Long.valueOf(request.getPArameter("bookId"))
//
//
//        switch (action){
//            case ADD:
//                response.sendRedirect("/AddBookServlet");
//
//
//            case 2:
//
//            case 3:
//
//            case 4:
//
//                default:
//                    throw new UnsupportedOperationException("no action");
//        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}
