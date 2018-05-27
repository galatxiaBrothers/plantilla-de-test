<%-- 
    Document   : listar_producto
    Created on : May 23, 2018, 10:59:09 PM
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
     <li><a class="waves-effect waves-yellow" href="agregarcategoria.do">Nuevo producto</a></li>
     <li><a class="waves-effect waves-yellow" href="listar_producto.jsp">Listar producto</a></li>
    <li><div class="divider"></div></li>
    
  </ul>
  
        
        <!-- Page Layout here -->
        <div class="row">

            <div class="col s8 m8 l8 xl8 offset-m1 offset-l4 offset-xl3"> <!-- Note that "m8 l9" was added -->

                <h3 class="cyan-text text-darken-3">Lista de Productos</h3>

                <div class="row">
                    <table class="highlight centered">
                        <thead>
                            <tr>

                                <th>Nombre</th>
                                <th>Detalle</th>
                                <th>Precio</th>
                                <th>Opciones</th>
                                
                            </tr>
                        </thead>

                        <tbody>
                            <tr>

                                <td>Alvin</td>
                                <td>Eclair</td>
                                <td>$0.87</td>
                                <td>
                                    <a class="btn-floating yellow darken-1"><i class="material-icons">search</i></a>
                                    <a class="btn-floating green "><i class="material-icons">mode_edit</i></a>
                                    <a class="btn-floating red"><i class="material-icons">delete</i></a>
                                </td>
                        </tr>
                        <tr>

                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                            <td>
                                    <a class="btn-floating yellow darken-1"><i class="material-icons">search</i></a>
                                    <a class="btn-floating green "><i class="material-icons">mode_edit</i></a>
                                    <a class="btn-floating red"><i class="material-icons">delete</i></a>
                                </td>
                            
                        </tr>
                        <tr>

                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                            <td>
                                    <a class="btn-floating yellow darken-1"><i class="material-icons">search</i></a>
                                    <a class="btn-floating green "><i class="material-icons">mode_edit</i></a>
                                    <a class="btn-floating red"><i class="material-icons">delete</i></a>
                                </td>
                            
                        </tr>
                        </tbody>
                    </table>
                </div>


            </div>

            <div class="col s12 m8 l9"> <!-- Note that "m8 l9" was added -->
                <!-- Teal page content
        
                      This content will be:
                  9-columns-wide on large screens,
                  8-columns-wide on medium screens,
                  12-columns-wide on small screens  -->

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

