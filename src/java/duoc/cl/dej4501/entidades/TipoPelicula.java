
package duoc.cl.dej4501.entidades;

import java.io.Serializable;


public class TipoPelicula implements Serializable{
    private int codigo;
    private int nombre;

    public TipoPelicula() {
    }

    public TipoPelicula(int codigo, int nombre) {
        this.codigo = codigo;
        this.nombre = nombre;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getNombre() {
        return nombre;
    }

    public void setNombre(int nombre) {
        this.nombre = nombre;
    }
    
    
}
