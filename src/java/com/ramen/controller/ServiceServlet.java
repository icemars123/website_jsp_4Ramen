/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ramen.controller;

import com.ramen.dao.ServiceBeanLocal;
import com.ramen.model.Service;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gavin
 */
@WebServlet(name = "ServiceServlet", urlPatterns = {"/ServiceServlet"})
public class ServiceServlet extends HttpServlet {

    @EJB 
    private ServiceBeanLocal serviceBean;
    
    /**
    * request and response.
    *
    * search the services based on the keywords.
    *
    * view all the services
    * 
    * return to the search.jsp file.
    */        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String category = request.getParameter("category");
        String name = request.getParameter("name");
        String keyword = request.getParameter("keyword");
         
        
        List<Service> services = new ArrayList<>();
        
        if("Search".equalsIgnoreCase(action)){
            if(!keyword.trim().equals("")){
                services = serviceBean.searchServicesByKeyword(keyword);
            }
            else{
                services = new ArrayList<>();
            }
        }
        else if ("ViewAll".equalsIgnoreCase(action)){
            services = serviceBean.getAllServices();
        }
        request.setAttribute("services", services);
        request.getRequestDispatcher("/search.jsp").forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
