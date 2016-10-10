<%-- 
    Document   : ListarProduto
    Created on : 27/09/2016, 20:31:37
    Author     : luan
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
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
        <jsp:useBean id="dao" class="br.com.master.dao.LivroDao" />
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
           
            <c:forEach var="livro" items="${dao.lista}">
            <tr>
                <td>${livro.isbn}</td>
                <td>${livro.titulo}</td>
                <td>${livro.ano}</td>
                <td>${livro.editora}</td>
                <td>${livro.autor}</td>
                <td>${livro.data}</td>
                <td>${livro.valor}</td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
