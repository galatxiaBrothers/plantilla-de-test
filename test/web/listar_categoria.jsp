<%-- 
    Document   : listar_categoria
    Created on : May 23, 2018, 10:59:00 PM
    Author     : kriss
--%>
<%@page import="java.util.ArrayList" %> 
<%@page import="model.CategoriaModel"  %> 

<% ArrayList<CategoriaModel> lista = (ArrayList<CategoriaModel>) request.getAttribute("listaCategoria"); %>


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
            <li><a class="waves-effect waves-yellow" href="nuevo_producto.jsp">Nuevo producto</a></li>
            <li><a class="waves-effect waves-yellow" href="listarcategoria.do">Listar producto</a></li>
            <li><div class="divider"></div></li>

        </ul>


        <div class="row">

            <div class="col s8 m8 l8 xl8 offset-m1 offset-l4 offset-xl3"> <!-- Note that "m8 l9" was added -->

                <h3 class="cyan-text text-darken-3">Lista de Categorias</h3>

                <div class="row">
                    <table class="highlight centered">
                        <thead>
                            <tr>

                                <th>Nombre</th>
                                <th>Detalle</th>
                                <th>Opciones</th>
                            </tr>
                        </thead>

                        <tbody>

                            <% for (CategoriaModel cat : lista) {

                            %>
                            <tr>

                                <td><%out.print(cat.getNombre());%></td>
                                <td><%out.print(cat.getDetalle());%></td>
                                <td>
                                    <a data-target="modal1" class="btn-floating yellow darken-1 z-depth-5 btn modal-trigger"><i class="material-icons">search</i></a>
                                    <a href="editarCategoria" class="btn-floating modal-trigger green z-depth-5"><i class="material-icons">mode_edit</i></a>
                                    <a class="btn-floating red z-depth-5"><i class="material-icons">delete</i></a>
                                </td>

                            </tr>

                            <%}%>

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

        <div id="modal1" class="modal">
            <div class="modal-content">
                <h4>Detalle Categoria</h4>
                <p> prueba</p>
            </div>
            <div class="modal-footer">
                <a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a>
            </div>
        </div>

    </div>
    <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
    </div> 
</div>   

<div id="modificarCat" class="modal modal-fixed-footer">
    <div class="modal-content">
        <h4>Modificar Categoria</h4>
        <div class="divider"></div>

        <form class="col s12" action="" method="POST">
            <div class="row hide">
                <div class="input-field col s12">
                    <input id="txtid" name="txtid" type="text" class="validate">
                    <label for="txtid">ID Categoria</label>

                </div>

            </div>
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
                <button class="btn waves-effect waves-light" type="submit" name="action">Guardar<i class="material-icons right">send</i>
                </button>      
            </div>

        </form>

    </div>

</div>
<div class="modal-footer">
    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
</div>





<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!--JavaScript at end of body for optimized loading-->
<script type="text/javascript" src="js/materialize.min.js"></script>
<script>
    $(document).ready(function () {
        $('.sidenav sidenav-fixed').sidenav();
        $('.modal').modal();
    });
</script>
</body>
</html>