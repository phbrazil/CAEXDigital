/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.controller.venda;

import com.mcibrasil.controller.login.*;
import com.mcibrasil.model.user.tbUser;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author paulo.bezerra
 */
@WebServlet(name = "/venda", urlPatterns = {"/venda"})
public class venda extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        request.setCharacterEncoding("UTF-8");

        HttpSession sessao = request.getSession();

        double irrf =0;
        double csll = 0;
        double cofins = 0;
        double pis = 0;
        double iss = 0;

        String optante = request.getParameter("optante");
        String razaoSocial = request.getParameter("razaoSocial");
        String cnpj = request.getParameter("cnpj");
        String estado = (String) sessao.getAttribute("estado");

        if (estado.equals("São Paulo") && optante.equals("Não Optante")) {
            
            irrf = 1.5;
            csll = 1.0;
            cofins = 3.0;
            pis = 0.65;
            iss = 2.50;

        } else if (estado.equals("São Paulo") && optante.equals("Optante")) {
            irrf = 1.5;
            csll = 0.0;
            cofins = 0.0;
            pis = 0.0;
            iss = 5.0;

        } else if (estado.equals("Rio de Janeiro") && optante.equals("Não Optante")) {
            irrf = 1.5;
            csll = 1.0;
            cofins = 3.0;
            pis = 0.65;
            iss = 5.0;

        } else if (estado.equals("Rio de Janeiro") && optante.equals("Optante")) {
            irrf = 1.5;
            csll = 0.0;
            cofins = 0.0;
            pis = 0.0;
            iss = 5.0;

        } else if (estado.equals("Porto Alegre") && optante.equals("Não Optante")) {
            irrf = 1.5;
            csll = 1.0;
            cofins = 3.0;
            pis = 0.65;
            iss = 5.0;

        } else if (estado.equals("Porto Alegre") && optante.equals("Optante")) {
            irrf = 1.5;
            csll = 0.0;
            cofins = 0.0;
            pis = 0.0;
            iss = 5.0;
        }

        
        System.out.println(irrf+"+++++++++++");

        request.setAttribute("irrf", irrf);
        request.setAttribute("csll", csll);
        request.setAttribute("cofins", cofins);
        request.setAttribute("pis", pis);
        request.setAttribute("iss", iss);

        sessao.setAttribute("optante", optante);
        sessao.setAttribute("razaoSocial", razaoSocial);
        sessao.setAttribute("cnpj", cnpj);
        request.getRequestDispatcher("venda.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
