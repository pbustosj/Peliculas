package duoc.cl.dej4501.negocio;

import duoc.cl.dej4501.entidades.Usuario;
import java.util.LinkedList;

public class UsuarioController {

    private LinkedList<Usuario> listaUsuario;

    public UsuarioController() {
    }

    public UsuarioController(LinkedList<Usuario> listaUsuario) {
        this.listaUsuario = listaUsuario;
    }

    public Usuario show(int id) {
        Usuario objUsuario = null;
        for (int i = 0; i < listaUsuario.size(); i++) {
            if (listaUsuario.get(i).getId() == id) {
                objUsuario = new Usuario(listaUsuario.get(i).getId(), listaUsuario.get(i).getNombre(), listaUsuario.get(i).getPassword(), listaUsuario.get(i).isEstado());
            }
        }
        return objUsuario;
    }

    public Usuario login(String nombre, String password) {
        Usuario objUsuario = null;
        for (int i = 0; i < listaUsuario.size(); i++) {
            if (listaUsuario.get(i).getNombre().compareToIgnoreCase(nombre) == 0
                    && listaUsuario.get(i).getPassword().compareToIgnoreCase(password) == 0
                    && listaUsuario.get(i).isEstado()) {
                objUsuario = new Usuario(listaUsuario.get(i).getId(), listaUsuario.get(i).getNombre(), listaUsuario.get(i).getPassword(), listaUsuario.get(i).isEstado());

            }
        }
        return objUsuario;

    }

    public boolean add(String nombre, String password, boolean estado) {
        Usuario objUsuario = login(nombre, password);
        if (objUsuario == null) {
            Usuario objUsuario1 = new Usuario(this.getLastId(), nombre, password, estado);
            listaUsuario.add(objUsuario1);
            return true;
        }
        return false;
    }

    public int getLastId() {
        if (this.listaUsuario != null) {

            return (this.listaUsuario.getLast().getId()) + 1;
        }
        return -1;
    }

    public boolean update(String nombre, String password, boolean estado, int code) {
        Usuario objUsuario = show(code);
        boolean hola = false;
        if (objUsuario != null) {
            for (int i = 0; i < listaUsuario.size(); i++) {
                if (listaUsuario.get(i).getId() == code) {
                    listaUsuario.get(i).setNombre(nombre);
                    listaUsuario.get(i).setPassword(password);
                    listaUsuario.get(i).setEstado(estado);
                    hola = true;

                }
            }

        }
        return hola;
    }

    public boolean delete(int code) {
        Usuario objUsuario = show(code);
        boolean hola = false;
        if (objUsuario != null) {
            for (int i = 0; i < listaUsuario.size(); i++) {
                if (listaUsuario.get(i).getId() == code) {

                    listaUsuario.get(i).setEstado(false);
                    hola = true;

                }
            }

        }
        return hola;
    }

    public boolean active(int code) {
        Usuario objUsuario = show(code);
        boolean hola = false;
        if (objUsuario != null) {
            for (int i = 0; i < listaUsuario.size(); i++) {
                if (listaUsuario.get(i).getId() == code) {

                    listaUsuario.get(i).setEstado(true);
                    hola = true;

                }
            }

        }
        return hola;
    }

}
