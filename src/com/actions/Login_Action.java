/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.actions;

import action.Dbconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jp
 */
public class Login_Action extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            HttpSession session  =request.getSession();
           
            String user = request.getParameter("name"); 
            String pass = request.getParameter("pass"); 
            
                        
            
            Connection connection = Dbconnection.getcon();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from user where user = '"+user+"'");
            if(resultSet.next()){
                if(resultSet.getString("pass").equals(pass)){
                    session.setAttribute("UID", user);
                response.sendRedirect("client.jsp#!/page_CLIENTHOME");    
                }else{
                    response.sendRedirect("index.jsp?msg=check_password#!/page_CLOGIN");
                }              
                
            }else{
                   response.sendRedirect("index.jsp?msg=Try_again#!/page_CLOGIN");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Login_Action.class.getName()).log(Level.SEVERE, null, ex);
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
