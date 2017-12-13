
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>EssenciAll</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href="css/style.css" rel="stylesheet" type="text/css"/>
      <link rel="stylesheet" href="css/style.css">

</head>

<body>

  <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#login">Login</a></li>
        <li class="tab"><a href="#signup1">Revendedor</a></li>
        <li class="tab"><a href="#signup2">Cliente</a></li>
      </ul>
      
      <div class="tab-content">
          <div id="login">   
          <h1>Bem Vindo!</h1>
          
          <form class="form-signin" action="GerenciaLogin" method="post">
          
            <div class="field-wrap">
            <label>
              Login<span class="req">*</span>
            </label>
            <input type="text" id="inputLogin" class="form-control" name="login" required autofocus required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Senha<span class="req">*</span>
            </label>
            <input type="password" id="inputPassword" class="form-control" name="senha" required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Esqueceu a Senha?</a></p>
          
          <button name="acao" value="login" class="button button-block"/>Entrar</button>
          
          </form>

        </div>
          
        <div id="signup1">   
          <h1>Cadastre-se</h1>
          
          <form action="GerenciaCadastro" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                Login<span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" name="login"/>
            </div>
        
            <div class="field-wrap">
              <label>
                Senha<span class="req">*</span>
              </label>
              <input type="password"required autocomplete="off" name="senha"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Confirmar Senha<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="confirmaSenha"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Email<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="email"/>
          </div>
              
          <div class="field-wrap">
            <label>
              Cidade<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="cidade"/>
          </div>
              
          <input type="hidden" name="tipo" value="Revendedor"/>
              
          <button type="submit" value="Cadastrar Usuario" name="acao" class="button button-block"/>Cadastrar</button>
          
          </form>

        </div>
          
        <div id="signup2">   
          <h1>Cadastre-se</h1>
          
          <form action="GerenciaCadastro" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                Login<span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" name="login"/>
            </div>
        
            <div class="field-wrap">
              <label>
                Senha<span class="req">*</span>
              </label>
              <input type="password"required autocomplete="off" name="senha"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Confirmar Senha<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="confirmaSenha"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Email<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="email"/>
          </div>
              
          <div class="field-wrap">
            <label>
              Cidade<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="cidade"/>
          </div>
              
          <input type="hidden" name="tipo" value="Cliente"/>
              
          <button type="submit" value="Cadastrar Usuario" name="acao" class="button button-block"/>Cadastrar</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="js/index.js"></script>

</body>
</html>

