<%-- 
    Document   : CadLiv
    Created on : 11/10/2016, 09:13:13
    Author     : Leonardo
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<link rel="stylesheet" type="text/css" href="estiloCSS.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.master.model.LivrosModel"%>
<%@page import="br.com.master.dao.LivroDao"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
    <head>
       <c:import url="Cabecalho.jsp"/>
        <title>Cadastro de livros</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <style>
        .unico{
            font-size: 25px;
            text-align: center;
            color: aquamarine;
        }
    </style>
    <body>
    <div class="unico"><a href="ListarProduto.jsp"> Cadastro de livros </a></div>
    <form class="form-horizontal" action="LivroServlet" method="GET">
        <div class="form-group">
            <label   class="col-sm-2 control-label">Digite o ISBN</label>
            <div class="col-sm-9">
                <input  name="isbn" type="text" class="form-control" placeholder="ISBN">
            </div>
        </div>
        <div class="form-group">
            <label   class="col-sm-2 control-label">Digite o tititulo do livro</label>
            <div class="col-sm-9">
                <input name="titulo" type="text" class="form-control"  placeholder="Titulo">
            </div>
        </div>
        <div class="form-group">
            <label   class="col-sm-2 control-label">Digite o ano do livro</label>
            <div class="col-sm-9">
                <input type="text" name="ano" class="form-control"  placeholder="Ano">
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-2 control-label">Digite a editora</label>
            <div class="col-sm-9">
                <input  name="editora" type="text" class="form-control"  placeholder="Editora">
            </div>
        </div>
        <div class="form-group">
            <label   class="col-sm-2 control-label">Digite o autor</label>
            <div class="col-sm-9">
                <input  name="autor" type="text" class="form-control"  placeholder="Autor">
            </div>
        </div>
        <div class="form-group">
            <label    class="col-sm-2 control-label">Digite o valor</label>
            <div class="col-sm-9">
                <input name="valor" type="text" class="form-control" placeholder="valor"><br>
            </div>
            <table align="center" widht="100%">
                <tr align="center" >
                    <td align="center">
                        <input align="center" type="submit" class="btn btn-primary" value="Gravar Produto"><br>
                    </td>
                </tr>
            </table>
              <c:import url="rodape.jsp"/>
        </div>
    </form>
</body>
</html>
