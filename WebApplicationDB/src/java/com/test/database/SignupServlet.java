/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.test.database;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author AYOUB
 */
@WebServlet(name = "SignupServlet", urlPatterns = {"/SignupServlet"})
public class SignupServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PreparedStatement ptm=null;
       
       PrintWriter out = response.getWriter();
        out.println("<h1>servled 1</h1>");
        try {
            out.println("<h1>servled en try</h1>");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?serverTimezone=Africa/Casablanca","root","");
           out.println("<h1>servled aprè  connect</h1>");
            String email = request.getParameter("email");
            String pass = request.getParameter("password");
            String username = request.getParameter("username");
            String lastname = request.getParameter("lastname");
            String firstname = request.getParameter("firstname");
            String phone = request.getParameter("phone");
            String street = request.getParameter("street");
            String city = request.getParameter("city");
            String country = request.getParameter("country");
            String codepostal = request.getParameter("codepostal");
            out.println("<h1>servled aprè inialiser</h1>");
            /*if(email.equals("")||pass.equals("")||lastname.equals("")||firstname.equals("")||phone.equals("")||street.equals("")
                  ||city.equals("")){
                
            }*/
                String sql = "INSERT INTO account VALUES (?,?,?,?,?,?,?,?,?,?)";
                     ptm = con.prepareStatement(sql);
                    ptm.setString(1,email );
                    ptm.setString(2, pass);
                    ptm.setString(3,username );
                    ptm.setString(4,firstname);
                    ptm.setString(5,lastname );
                    ptm.setString(6,phone );
                    ptm.setString(7,street );
                    ptm.setString(8,city );
                    ptm.setString(9,country );
                    ptm.setString(10,codepostal );
                    ptm.executeUpdate();
                    out.println("<h1>base de données</h1>"+ city);
                    this.getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SignupServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
           
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
