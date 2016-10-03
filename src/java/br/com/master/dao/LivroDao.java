/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.master.dao;

import br.com.master.connection.ConnectionFactory;
import br.com.master.model.LivrosModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Aluno
 */
public class LivroDao {

    private PreparedStatement stmt;
    private ResultSet rs;
    private Connection conecta;

    public LivroDao() throws SQLException {
        this.conecta = new ConnectionFactory().getConnection();
    }

    public void adicionaProduto(LivrosModel livro) {
        String sql = "INSERT INTO LIVROS(ISBN, TITULO, ANO, EDITORA, AUTOR) VALUES (?,?,?,?,?)";
        try {
            stmt = conecta.prepareStatement(sql);
            stmt.setInt(1, livro.getIsbn());
            stmt.setString(2, livro.getTitulo());
            stmt.setInt(3, livro.getAno());
            stmt.setString(4, livro.getEditora());
            stmt.setString(5, livro.getAutor());
            if(stmt.execute()){
                System.out.println("Executado com sucesso");
            }
            stmt.close();
        } catch (SQLException e) {
            System.out.println("Erro ao adicionar produto: " + e);
        }
    }

    public void removeProduto() {

    }

    public List<LivrosModel> listalivro() {

        List<LivrosModel> listalivros = new ArrayList<>();
        String sql = "SELECT * FROM LIVROS";

        try {
            stmt = conecta.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {

                LivrosModel livro = new LivrosModel();
                livro.setAno(rs.getInt("ano"));
                livro.setAutor(rs.getString("autor"));
                livro.setEditora(rs.getString("editora"));
                livro.setIsbn(rs.getInt("isbn"));
                livro.setTitulo(rs.getString("titulo"));
                livro.setData(rs.getDate("DATA_CAD"));
                
                listalivros.add(livro);
            }
            stmt.close();
            return listalivros;
        } catch (SQLException e) {
            System.out.println("Erro no Sql: " + e);
            return null;
        }

    }

    public void alteraProduto() {

    }
}
