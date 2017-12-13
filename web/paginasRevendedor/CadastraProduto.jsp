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

    <title>Cadastro de Clientes</title>

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
           
        <br>

                <form action="GerenciaCadastro" method="Post">   
                    
                    <h2>Cadastrar Produtos</h2>
        
       <p style="color: white">Insira suas informações abaixo: </p>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
            <td style="font-family:BankGothic Lt Bt "> Nome: </td> <td> <input type="text" name="nome" placeholder="Exemplo"/> </td> 
        </tr>
        
        <tr>
            <td style="font-family:BankGothic Lt Bt"> Quantidade em Estoque: </td> <td> <input type="text" name="quantidade" placeholder="Exemplo"/> </td>
        </tr>

        <tr>
            <td style="font-family:BankGothic Lt Bt "> Valor em Reais: </td> <td> <input type="text" name="valor" placeholder="Exemplo"/> </td> 
        </tr>
        
        <tr>
            <td style="font-family:BankGothic Lt Bt"> Descrição: </td> <td> <input type="text" name="descricao" placeholder="Exemplo"/> </td>
        </tr>
        
        <tr>
            <td style="font-family:BankGothic Lt Bt"> Marca: </td> <td> <select>
                            <option value="volvo">Avon</option>
                            <option value="saab">OBoticario</option>
                            <option value="mercedes">Mary Kay</option>
                            <option value="audi">Jequiti</option>
                          </select> </td> 
        </tr>
              </thead>
        
            </table>
            
            <br>
            
            <span> <input type="submit" value="Cadastrar Produto" name="acao" style="background-color: greenyellow"> </span>
            <!-- <a href="Home.html"> <input type="button" value="Cancelar" style="background-color: red"/> </a> -->
            <!-- Todo form precisa de um submit!!! pois é ele que envia as info -->
                 
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
