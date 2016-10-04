/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.master.servlet;

import br.com.master.dao.*;
import br.com.master.model.LivrosModel;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Aluno
 */


    @WebServlet("/LivroServlet")
    public class LivroServlet extends HttpServlet {

        private static final long serialVersionUID = 1L;

        @Override
        public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

            int isbn = Integer.parseInt(request.getParameter("isbn"));
            String titulo = request.getParameter("titulo");
            int ano = Integer.parseInt(request.getParameter("ano"));
            String editora = request.getParameter("editora");
            String autor = request.getParameter("autor");
            Double valor = Double.parseDouble(request.getParameter("valor"));
           

            LivrosModel livrosmodel = new LivrosModel();
            livrosmodel.setIsbn(isbn);
            livrosmodel.setAno(ano);
            livrosmodel.setAutor(autor);
            livrosmodel.setEditora(editora);
            livrosmodel.setTitulo(titulo);
            livrosmodel.setValor(valor);

            try {
                LivroDao livroDao = new LivroDao();
                livroDao.adicionaProduto(livrosmodel);
            } catch (SQLException ex) {
                Logger.getLogger(LivroServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

