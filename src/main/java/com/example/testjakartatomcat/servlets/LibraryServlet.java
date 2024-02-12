package com.example.testjakartatomcat.servlets;

import com.example.testjakartatomcat.DAO.LibraryDAO;
import com.example.testjakartatomcat.Model.Library;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LibraryServlet", urlPatterns = "/library")
public class LibraryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LibraryDAO libraryDAO = (LibraryDAO) this.getServletContext().getAttribute("libraryDAO");
        req.setAttribute("library",libraryDAO.selectAll());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/Library.jsp");
        requestDispatcher.forward(req, resp);
    }


    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Library library = new Library();
        if(req.getParameter("game_id")!=""&&req.getParameter("user_id")!=""){
            library.setGame_id(Integer.parseInt(req.getParameter("game_id")));
            library.setUser_id(Integer.parseInt(req.getParameter("user_id")));
            if(req.getParameter("activity")!="")library.setActivity(Float.parseFloat(req.getParameter("activity")));
            else library.setActivity(0.0f);
            if(req.getParameter("purchare_date")!="")library.setPurchare_date(req.getParameter("purchare_date"));
            else library.setPurchare_date(null);
            LibraryDAO libraryDAO = (LibraryDAO) this.getServletContext().getAttribute("libraryDAO");
            libraryDAO.insert(library);
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/home.jsp");
        requestDispatcher.forward(req, resp);
    }
}
