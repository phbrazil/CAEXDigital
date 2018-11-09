/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcibrasil.controller.login;

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
@WebServlet(name = "/Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

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

        String emailCliente = request.getParameter("userName");
        String passwordCliente = request.getParameter("password");

        //indica as configuracoes do banco
        Configuration con = new Configuration().configure().addAnnotatedClass(tbUser.class);
        SessionFactory sf = con.buildSessionFactory();

        //abre sessao com o banco
        Session session = sf.openSession();
        List<tbUser> user;

        try {

            //inicia a transacao com o banco
            Transaction tx = session.beginTransaction();
            String hql = "from tbUser where emailCliente = '" + emailCliente + "' and passwordCliente ='" + passwordCliente + "'";
            user = session.createQuery(hql).list();

            //comita as informacoes
            tx.commit();
        } finally {
            if (session != null) {
                session.close();
                sf.close();
            }
        }
        String primeironome = "";

        if (user.size() > 0) {

            for (int i = 0; i < user.get(0).getNomeUser().length(); i++) {

                if (i == 0) {
                    primeironome = primeironome + user.get(0).getNomeUser().toUpperCase().charAt(i);

                } else {
                    primeironome = primeironome + user.get(0).getNomeUser().toLowerCase().charAt(i);

                }

                if (String.valueOf(user.get(0).getNomeUser().charAt(i)).equals(" ")) {

                    break;

                }

            }
            sessao.setAttribute("nomeUser", primeironome);
            sessao.setAttribute("emailUser", user.get(0).getEmailUser());
            sessao.setAttribute("idUser", user.get(0).getId());
            
            System.out.println(user.get(0).getId());

            request.getRequestDispatcher("home.jsp").forward(request, response);

        } else {

            String path = "index.jsp";
            String mensagem = "Acesso negado!";
            request.setAttribute("path", path);
            out.println("<script type='text/javascript'>");
            out.println("location='modal?path=" + path + "&mensagem=" + mensagem + "';");
            out.println("</script>");

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
