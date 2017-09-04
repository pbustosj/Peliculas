package duoc.cl.dej4501.entidades;

import java.io.Serializable;

public class Usuario implements Serializable {

    private int id;
    private String nombre;
    private String password;
    private boolean estado;

    public Usuario() {
    }

    public Usuario(int id, String nombre, String password, boolean estado) {
        this.id = id;
        this.nombre = nombre;
        this.password = password;
        this.estado = estado;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

}
