<%-- 
    Document   : nuevo_producto
    Created on : May 23, 2018, 10:58:49 PM
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
     <li><a class="waves-effect waves-yellow" href="listar_categoria.jsp">Listar categoria</a></li>
     <li><div class="divider"></div></li>
     <li><a class="waves-effect waves-yellow" href="nuevo_producto.jsp">Nuevo producto</a></li>
     <li><a class="waves-effect waves-yellow" href="listar_producto.jsp">Listar producto</a></li>
    <li><div class="divider"></div></li>
    
  </ul>
  
       
        
        <!-- Page Layout here -->
        <div class="row">



            <div class="col s8 m8 l8 xl8 offset-m1 offset-l4 offset-xl3"> <!-- Note that "m8 l9" was added -->

                <h3 class="cyan-text text-darken-3">Nuevo Producto</h3>

                <div class="row">



                    <form class="col s12">
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="txtnombre" name="txtnombre" type="text" class="validate">
                                <label for="txtnombre">Nombre Producto</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="txtdetalle" name="txtdetalle" type="text" class="validate">
                                <label for="txtdetalle">Detalle Producto</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <input id="txtcantidad" name="txtcantidad" type="text" class="validate">
                                <label for="txtcantidad">Cantidad Producto</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="txtprecio" name="txtprecio" type="text" class="validate">
                                <label for="txtprecio">Precio Producto</label>
                            </div>
                        </div>

                        <div class="row">

                            <div class="input-field col s6">
                                <select>
                                    <option value="" disabled selected>Selecciona una opciÃ³n</option>
                                    <option value="1">OpciÃ³n 1</option>
                                    <option value="2">OpciÃ³n 2</option>
                                    <option value="3">OpciÃ³n 3</option>
                                </select>
                                <label>CategorÃ­a</label>
                            </div>
                                <div class="input-field col s4 offset-s2">

                                    <input type="checkbox" id="disponible" name="disponible" checked="checked" />
                                    <label for="disponible">Visible</label>
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