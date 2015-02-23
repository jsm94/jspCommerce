/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

import java.util.Comparator;

/**
 * 
 * @author Juan Antonio Seco Merchán
 */
public class Producto implements Comparator<Producto>{
    private Integer id;
    private String nombre;
    private String descripcion;
    private Double precio;
    private String imagen;

    public Integer getId() {
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

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    @Override
    public String toString() {
        return nombre; //To change body of generated methods, choose Tools | Templates.
    }

    public boolean equals(Producto obj) {
        return this.id.equals(obj.id); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int compare(Producto o1, Producto o2) {
        return o1.id - o2.id ; //To change body of generated methods, choose Tools | Templates.
    }
}
