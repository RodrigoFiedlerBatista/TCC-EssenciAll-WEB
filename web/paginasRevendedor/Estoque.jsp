<!doctype html>

<%@page import="java.util.List"%>
<%@page import="model.Produto"%>
<%@page import="model.jdbc.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">
    
     <script>
            function confirmaExcluir() {
                var id = document.getElementById('idDoProduto').value; //busca o value do elemento pelo seu ID
                
                //cria um alert do tipo 'confirm'
                var resposta = confirm("ATENÇÂO! \n\ Deseja realmente excluir o produto de ID: " + id + " ? \n\
               \n\ A operação não poderá ser desfeita!");
                if (resposta == true) {
                    return true; //se a resposta for SIM, continua..
                } else {
                    return false; //se a resposta for NAO, para!
                }
            }
        </script>

    <title>Consulta</title>

    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <!-- Custom styles for this template -->
    <link href="../css/cover.css" rel="stylesheet" type="text/css"/>
  </head>

  <body>

    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <header class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">EssenciAll</h3> <br>
              <nav class="nav nav-masthead">
                <a class="nav-link" href="EditarContaRevendedor.jsp">Editar Conta</a>
                <a class="nav-link" href="Estoque.jsp">Estoque</a>  
                <a class="nav-link" href="../GerenciaHomeRevendedor" style="color: red" >Voltar</a>
              </nav>
            </div>
          </header>
        
       <h2>Consulta produtos</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr> 
                <th>ID</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Potência cc</th>
                <th>Ano</th>
                <th>Valor</th>
                <th>Editar</th>
                <th>Excluir</th>
            </tr>
              </thead>
              
   
              
              <tbody>
                 <form action="GerenciaMoto" method="Post">
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>    
                    <td></td>
                    <td><input type="submit" value="Editar" name="acao" > </td>
                    <td><input type="submit" value="Excluir" name="acao" onclick="return confirmaExcluir()"  > </td>
                <input type="hidden" value="" name="id_moto" id="idDaMoto" >
                </tr> 
            </form>
            
                
               

          <footer class="mastfoot">
            <div class="inner">
              <p>Desenvolvido por <a style="color: white"> EssenciAll </p> <!--<a href="https://getbootstrap.com/">EssenciAll</a><!--, by <a href="https://twitter.com/mdo">@mdo</a>.</p> -->
            </div>
          </footer>

        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../../../assets/js/vendor/popper.min.js"></script>
    <script src="../../../../dist/js/bootstrap.min.js"></script>
  </body>
</html>
