/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UniversityDAO;
import model.UniversityDTO;

/**
 *
 * @author Dang Khoa
 */
public class SearchController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String keywords = request.getParameter("keywords");
        if (keywords == null) {
            keywords = "";
        }

        System.out.println(keywords);
        UniversityDAO udao = new UniversityDAO();
        ArrayList<UniversityDTO> list = new ArrayList<>();
        if (keywords.trim().length() > 0) {
            list = udao.filterByName(keywords);
        }
        request.setAttribute("list", list);
        request.setAttribute("keywords", keywords);
        String url = "search.jsp";
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
