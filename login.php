<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Iniciar sesión - IESTPHUANTA  </title>

    <!-- Bootstrap -->
    <link href="Gentella/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="Gentella/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="Gentella/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="Gentella/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="Gentella/build/css/custom.min.css" rel="stylesheet">
  </head>
  
  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>
      
      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
          <center>
              <img src="Logo/logo.png" alt="logo_instituto"  width="150px"/>
            </center>
            <form method="POST" action ="operaciones/iniciar_sesion.php" >
              <h1>Inicio de Sesión</h1>
              <div>
                <input type="text" name="usuario" class="form-control" placeholder="Usuario" required="" />
              </div>
              <div>
                <input type="password"  name = "password" class="form-control" placeholder="Contraseña" required="" />
              </div>

              <div>
              <button type="submit">Iniciar Sesion</button>
                <a class="reset_pass" href="#">0lvidaste tu contraseña?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Donde es el sitio?
                  <a href="crear_usuario.php" class="to_register"> Crear una cuenta</a>
                </p>

                <div class="clearfix"></div>
                <br />

              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>