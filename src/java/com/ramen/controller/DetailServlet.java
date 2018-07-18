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
@WebServlet(name = "DetailServlet", urlPatterns = {"/DetailServlet"})
public class DetailServlet extends HttpServlet {

    @EJB
    private ServiceBeanLocal serviceBean;
//    private Service s;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        String sidStr = request.getParameter("sid");
//        int sid = 0;
//        if (sidStr != null && !sidStr.equals("")) {
//            sid = Integer.parseInt(sidStr);
//        }
//        Service service;
//        service = serviceBean.getService(sid);
//        request.setAttribute("service", service);
//        request.getRequestDispatcher("display.jsp").forward(request, response);

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
    
    
    /**
    * Post from service.jsp by ajax and jquery
    * 
    * return to service_details.jsp.
    */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String sidStr = request.getParameter("sid");
        int sid = 0;
        Service service = new Service();
        if (sidStr != null && !sidStr.equals("")) {
            sid = Integer.parseInt(sidStr);
            service = serviceBean.getService(sid);
        }
        request.getSession().setAttribute("service", service);
        response.sendRedirect(request.getContextPath() + "/service_details.jsp?sid=" + sid);
        
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
