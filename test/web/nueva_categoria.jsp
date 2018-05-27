<%-- 
    Document   : nueva_categoria
    Created on : May 23, 2018, 10:58:32 PM
    Author     : kriss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>
        
        
        <nav> <!-- navbar content here  --> </nav>

  <ul id="slide-out" class="sidenav sidenav-fixed">
    <li><div class="user-view">
      <div class="background">
          <img src="imagen/fondo.jpg" class="responsive-img">
      </div>
            <a href="#user"><img class="circle" src="imagen/perfil.jpg"></a>
      <a href="#name"><span class="brown-text name">Kristian</span></a>
      <a href="#email"><span class="brown-text email">Kriss@gmail.com</span></a>
    </div></li>
    

      <li><div class="divider"></div></li>
     <li><a class="waves-effect waves-yellow" href="index.html">Menu</a></li>
     <li><div class="divider"></div></li>
     <li><a class="waves-effect waves-yellow" href="nueva_categoria.jsp">Nueva categoria</a></li>
     <li><a class="waves-effect waves-yellow" href="listarcategorias.do">Listar categoria</a></li>
     <li><div class="divider"></div></li>
     <li><a class="waves-effect waves-yellow" href="agregarcategoria.do">Nuevo producto</a></li>
     <li><a class="waves-effect waves-yellow" href="listar_producto.jsp">Listar producto</a></li>
    <li><div class="divider"></div></li>
    
  </ul>
  
        
        <!-- Page Layout here -->
        <div class="row">



            <div class="col s8 m8 l8 xl8 offset-m1 offset-l4 offset-xl3"> <!-- Note that "m8 l9" was added -->

                <h3 class="cyan-text text-darken-3">Nueva Categoria</h3>

                <div class="row">



                    <form class="col s12" action="nuevacategoria.do" method="POST" >
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="txtnombre" name="txtnombre" type="text" class="validate">
                                <label for="txtnombre">Nombre Categoria</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="txtdetalle" name="txtdetalle" type="text" class="validate">
                                <label for="txtdetalle">Detalle Categoria</label>
                            </div>
                        </div>

                        <div class="row">
                            <button class="btn waves-effect waves-light" type="submit" name="action">Guardar
    <i class="material-icons right">send</i>
  </button>
                            
                        </div>

                    </form>

                </div>
            </div>

        </div>


        
       
        
        

      <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="js/materialize.min.js"></script>
      <script>
          $(document).ready(function(){
    $('.sidenav sidenav-fixed').sidenav();
  });
      </script>
    </body>
  </html>
