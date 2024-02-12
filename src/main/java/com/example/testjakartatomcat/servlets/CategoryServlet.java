package com.example.testjakartatomcat.servlets;

import com.example.testjakartatomcat.DAO.CategoryDAO;
import com.example.testjakartatomcat.Model.Category;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CategoryServlet", urlPatterns = "/category")
public class CategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoryDAO categoryDAO = (CategoryDAO) this.getServletContext().getAttribute("categoryDAO");
        req.setAttribute("category",categoryDAO.selectAll());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/Categories.jsp");
        requestDispatcher.forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoryDAO categoryDAO = (CategoryDAO) this.getServletContext().getAttribute("categoryDAO");
        Category category = new Category();
        if(req.getParameter("title")!=""){
            category.setTitle(req.getParameter("title"));
            category.setSingleplayer(Integer.parseInt(req.getParameter("singleplayer"))==1);
            category.setMultiplayer(Integer.parseInt(req.getParameter("multiplayer"))==1);
            category.setNot_for_all(Integer.parseInt(req.getParameter("not_for_all"))==1);
            categoryDAO.insert(category);
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/home.jsp");
        requestDispatcher.forward(req, resp);
    }
}