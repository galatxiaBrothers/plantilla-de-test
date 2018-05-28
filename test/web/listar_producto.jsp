<%-- 
    Document   : listar_producto
    Created on : May 23, 2018, 10:59:09 PM
    Author     : kriss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList;"%>
<%@page import="model.ProductoModel"%>

<% ArrayList<ProductoModel> lista = (ArrayList<ProductoModel>) request.getAttribute("listaProducto");%>


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
     <li><a class="waves-effect waves-yellow" href="listarproducto.do">Listar producto</a></li>
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
                                <th>Cantidad</th>
                                <th>Precio</th>
                                <th>Opciones</th>
                                
                            </tr>
                        </thead>

                        <tbody>
                            <%for (ProductoModel pro : ProductoModel.listaProducto) {
                                    
                                
                            %>
                            <tr id="<%out.print(pro.getId());%>">

                                <td><%out.print(pro.getNombre_producto());%></td>
                                <td><%out.print(pro.getDetalle_producto());%></td>
                                <td><%out.print(pro.getCantidad_producto());%></td>
                                <td><%out.print(pro.getPrecio_producto());%></td>
                                
                                
                                <td>
                                    <a href="#VerDetallePro"class="btn-floating yellow darken-1 modal-trigger btnVerDetalle"><i class="material-icons">search</i></a>
                                    <a href="#modificarPro"class="btn-floating green modal-trigger btnModificar "><i class="material-icons">mode_edit</i></a>
                                    <a href="#EliminarPro"class="btn-floating red modal-trigger btnEliminar"><i class="material-icons">delete</i></a>
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
                        
                        <div id="VerDetallePro" class="modal">
            <div class="modal-content">
                <h4>Detalle Producto </h4>
                <div class="divider"></div>
                
                <div class="section">
                    <h5>Nombre Producto</h5>
                    <p id="poNombre"></p>
                    
                </div>
                
                 <div class="section">
                    <h5>Detalle Producto</h5>
                    <p id="poDetalle"></p>
                    
                </div>
                  <div class="section">
                    <h5>Cantidad Producto</h5>
                    <p id="poCantidad"></p>
                    
                </div>
                  <div class="section">
                    <h5>Precio Producto</h5>
                    <p id="poPrecio"></p>
                    
                </div>
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

<div id="modificarPro" class="modal modal-fixed-footer">
    <div class="modal-content">
        <h4>Modificar Categoria</h4>
        <div class="divider"></div>
        
        

        <form class="col s12" action="editarproducto.do" method="POST">
            <div class="row hide">
                <div class="input-field col s12">
                    <input id="txtIDp" name="txtIDp" type="text" class="validate">
                    <label for="txtIDp">ID Producto</label>

                </div>

            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="txtNombrep" name="txtNombrep" type="text" class="validate">
                    <label for="txtNombrep">Nombre Categoria</label>

                </div>

            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="txtDetallep" name="txtDetallep" type="text" class="validate">
                    <label for="txtDetallep">Detalle Producto</label>

                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="txtCantidadp" name="txtCantidadp" type="text" class="validate">
                    <label for="txtCantidadp">Cantidad  Producto</label>

                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="txtPreciop" name="txtPreciop" type="text" class="validate">
                    <label for="txtPreciop">Precio Producto</label>

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
    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Cancelar</a>
</div>


<div id="EliminarPro" class="modal modal-fixed-footer">
    <div class="modal-content">
        <h4>Eliminar Producto</h4>
        
        

        <form class="col s12" action="eliminarproducto.do" method="POST">
            <div class="row hide">
                <div class="input-field col s12">
                    <input id="etxtIDp" name="etxtIDp" type="text" class="validate">
                    <label for="etxtIDp">ID Producto</label>

                </div>
                
            </div>
               <div class="col s12">
                <div class="modal-content">
                <div class="divider"></div>
                
                 <div class="section">
                    <h5>Nombre Producto</h5>
                    <p id="pooNombre"></p>
                    
                </div>
                
                 <div class="section">
                    <h5>Detalle Producto</h5>
                    <p id="pooDetalle"></p>
                    
                </div>
                  <div class="section">
                    <h5>Cantidad Producto</h5>
                    <p id="pooCantidad"></p>
                    
                </div>
                  <div class="section">
                    <h5>Precio Producto</h5>
                    <p id="pooPrecio"></p>
                    
                </div>
            </div>
                
            <div class="row">
                <button class="btn waves-effect waves-light" type="submit" name="action">Eliminar<i class="material-icons right">send</i>
                </button>      
            </div>
               </div>
        </form>

    


<div class="modal-footer">
    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Cancelar</a>
</div>


       
        
        

      <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
      <script>
          $(document).ready(function(){
    $('.sidenav sidenav-fixed').sidenav();
     $('.modal').modal();
     
         $('.btnVerDetalle').click(function(){
        var nombre = $(this).parents('tr').find('td')[0].innerHTML;   
        var detalle = $(this).parents('tr').find('td')[1].innerHTML;   
        var precio = $(this).parents('tr').find('td')[2].innerHTML;   
        var cantidad = $(this).parents('tr').find('td')[3].innerHTML;   
        
        $('#poNombre').text(nombre);
        $('#poDetalle').text(detalle);
        $('#poCantidad').text(precio);
        $('#poPrecio').text(cantidad);
        
        });
        
        $('.btnModificar').click(function (){
            
            var nombre = $(this).parents('tr').find('td')[0].innerHTML;
            var detalle = $(this).parents('tr').find('td')[1].innerHTML;
            var cantidad = $(this).parents('tr').find('td')[2].innerHTML;
            var precio = $(this).parents('tr').find('td')[3].innerHTML;
            var idProducto = $(this).parents('tr').attr('id');
            
            $('#txtIDp').val(idProducto);
            $('#txtNombrep').val(nombre);
            $('#txtDetallep').val(detalle);
            $('#txtCantidadp').val(precio);
            $('#txtPreciop').val(cantidad);
            
            Materialize.updateTextFields();
            
        });
        
        $('.btnEliminar').click(function (){
            
             var nombre = $(this).parents('tr').find('td')[0].innerHTML;
            var detalle = $(this).parents('tr').find('td')[1].innerHTML;
            var cantidad = $(this).parents('tr').find('td')[2].innerHTML;
            var precio = $(this).parents('tr').find('td')[3].innerHTML;
            var idProducto = $(this).parents('tr').attr('id');
            
            $('#etxtIDp').val(idProducto);
               $('#pooNombre').text(nombre);
               $('#pooDetalle').text(detalle);
               $('#pooCantidad').text(precio);
               $('#pooPrecio').text(cantidad);
            
            Materialize.updateTextFields();
            
            
            
        });
        
  });
      </script>
    </body>
  </html>

