/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import javax.accessibility.AccessibleRole;


public class ProductoModel {
 private Integer id;  
 private String nombre_producto;
 private String detalle_producto;
 private int cantidad_producto;
 private int precio_producto;

 
 public static ArrayList<ProductoModel>listaProducto = new ArrayList<>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public String getDetalle_producto() {
        return detalle_producto;
    }

    public void setDetalle_producto(String detalle_producto) {
        this.detalle_producto = detalle_producto;
    }

    public int getCantidad_producto() {
        return cantidad_producto;
    }

    public void setCantidad_producto(int cantidad_producto) {
        this.cantidad_producto = cantidad_producto;
    }

    public int getPrecio_producto() {
        return precio_producto;
    }

    public void setPrecio_producto(int precio_producto) {
        this.precio_producto = precio_producto;
    }

    public ProductoModel() {
    }

    public ProductoModel(String nombre_producto, String detalle_producto, int cantidad_producto, int precio_producto) {
        this.nombre_producto = nombre_producto;
        this.detalle_producto = detalle_producto;
        this.cantidad_producto = cantidad_producto;
        this.precio_producto = precio_producto;
    }

    private ProductoModel(Integer id, String nombre_producto, String detalle_producto, int cantidad_producto, int precio_producto) {
        this.id = id;
        this.nombre_producto = nombre_producto;
        this.detalle_producto = detalle_producto;
        this.cantidad_producto = cantidad_producto;
        this.precio_producto = precio_producto;
    }
    
 
    public void nuevoProducto(ProductoModel producto){
        
        int idMayor = 0;
       
       if(!listaProducto.isEmpty()){
           
           for (ProductoModel pro : ProductoModel.listaProducto) {
               
               if(pro.getId()>idMayor){
                   idMayor = pro.getId();
                   
               }   
           }
       }
       idMayor+=1;
       
       listaProducto.add(new ProductoModel(idMayor,producto.getNombre_producto(),producto.getDetalle_producto(),producto.getCantidad_producto(),producto.getPrecio_producto()));
       
   }
    
    public void editarProducto(ProductoModel producto, int id){
        
         for(ProductoModel lista : listaProducto) {
           if(lista.getId()== id){
               lista.setNombre_producto(producto.getNombre_producto());
               lista.setDetalle_producto(producto.getDetalle_producto());
               lista.setCantidad_producto(producto.getCantidad_producto());
               lista.setPrecio_producto(producto.getPrecio_producto());
           }
       }
        
        
    }
    
    public void eliminarProducto(int id){
        
        ProductoModel eliminar = new ProductoModel();
        
        for (ProductoModel lista : listaProducto) {
            
            if(lista.getId()==id){
                
                eliminar = lista;
                
            }
            
          
            
        }
          listaProducto.remove(eliminar);
    }
        
        
        
    }
 