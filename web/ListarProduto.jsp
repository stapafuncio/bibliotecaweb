<%-- 
    Document   : ListarProduto
    Created on : 27/09/2016, 20:31:37
    Author     : luan
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.com.master.model.LivrosModel"%>
<%@page import="br.com.master.dao.LivroDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Livro</title>
        <link rel="shortcut icon" href="WEB-INF/Printing-Book-Stack-icon.png" type="image/x-icon" />
    </head>
    <body>
        <link rel="stylesheet" type="text/css" href="estiloCSS.css">
        <table>
            <tr>
                <td class="codigo">ISBN</td>
                <td class="alinhaCentro"> Titítulo do livro</td>
                <td class="alinhaCentro"> Ano do livro </td>
                <td class="alinhaCentro">Editora</td>
                <td class="alinhaCentro"> Autor </td>
                <td class="alinhaCentro"> Data </td> 
                <td class="alinhaCentro"> valor </td>
            </tr>
            <%
                LivroDao lr = new LivroDao();
                SimpleDateFormat dt = new SimpleDateFormat("dd/MM/yy");
                NumberFormat formata = NumberFormat.getCurrencyInstance();

                for (LivrosModel livros : lr.listalivro()) {
            %>
            <tr>
                <td><%=livros.getIsbn()%></td>
                <td><%=livros.getTitulo()%></td>
                <td><%=livros.getAno()%></td>
                <td><%=livros.getEditora()%></td>
                <td><%=livros.getAutor()%></td>
                <td><%=dt.format(livros.getData())%></td>
                <td><%=formata.format(livros.getValor())%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
