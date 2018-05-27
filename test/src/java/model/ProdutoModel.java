/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;


public class ProdutoModel {
    
    private Integer id;
    private String nombre_producto;
    private String detalle_producto;
    private String categoria_producto;
    private int cantidad_producto;
    private int precio_producto;
    
    public static ArrayList<ProdutoModel>listaProducto = new ArrayList<>();

    public ProdutoModel() {
    }

    public ProdutoModel(String nombre_producto, String detalle_producto, String categoria_producto, int cantidad_producto, int precio_producto) {
        this.nombre_producto = nombre_producto;
        this.detalle_producto = detalle_producto;
        this.categoria_producto = categoria_producto;
        this.cantidad_producto = cantidad_producto;
        this.precio_producto = precio_producto;
    }

    private ProdutoModel(Integer id, String nombre_producto, String detalle_producto, String categoria_producto, int cantidad_producto, int precio_producto) {
        this.id = id;
        this.nombre_producto = nombre_producto;
        this.detalle_producto = detalle_producto;
        this.categoria_producto = categoria_producto;
        this.cantidad_producto = cantidad_producto;
        this.precio_producto = precio_producto;
    }
    
    

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

    public String getCategoria_producto() {
        return categoria_producto;
    }

    public void setCategoria_producto(String categoria_producto) {
        this.categoria_producto = categoria_producto;
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
    
    
    public void agregarProducto(){
        
        int idMayor=0;
        
        
        
        
    }
    
}
