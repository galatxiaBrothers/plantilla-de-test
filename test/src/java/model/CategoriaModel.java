/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author kriss
 */
public class CategoriaModel {

   
   private Integer id;
   private String nombre;
   private String detalle;
   
 public static   ArrayList<CategoriaModel> listaCategoria = new ArrayList();

    public CategoriaModel() {
    }

    public CategoriaModel(String nombre, String detalle) {
        this.nombre = nombre;
        this.detalle = detalle;
    }
   
    private CategoriaModel(Integer id, String nombre, String detalle) {
        this.id = id;
        this.nombre = nombre;
        this.detalle = detalle;
    }
    
   

    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }
   
   public void nuevaCategoria(CategoriaModel categoria){
       
       int idMayor = 0;
       
       if(!listaCategoria.isEmpty()){
           
           for (CategoriaModel cat : listaCategoria) {
               
               if(cat.getId()>idMayor){
                   idMayor = cat.getId();
                   
               }   
           }
       }
       idMayor+=1;
       
       listaCategoria.add(new CategoriaModel(idMayor,categoria.getNombre(),categoria.getDetalle()));
       
   }
    
}
