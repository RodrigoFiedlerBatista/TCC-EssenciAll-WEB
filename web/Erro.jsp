<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">
    
    <script>
            function mascara(t, mask) {
                var i = t.value.length;
                var saida = mask.substring(1, 0);
                var texto = mask.substring(i)
                if (texto.substring(0, 1) != saida) {
                    t.value += texto.substring(0, 1);
                }
            }
            </script>

    <title>Erro 404 - File Not Found</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <!-- Custom styles for this template -->
    <link href="css/cover.css" rel="stylesheet" type="text/css"/>
  </head>

  <body>

    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <header class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">EssenciAll</h3> <br>
              <nav class="nav nav-masthead">
<!--                <a class="nav-link" href="EditarContaRevendedor.jsp">Editar Conta</a>
                <a class="nav-link" href="Estoque.jsp">Estoque</a>  -->
                <a class="nav-link" href="../GerenciaHomeRevendedor" style="color: red" >Voltar</a>
              </nav>
            </div>
          </header>

                <form action="GerenciaMoto" method="Post">   
                    <h2>ERRO 404</h2>
        
       <p style="color: white"> Ocorreu um erro - File not Found </p>
          

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
