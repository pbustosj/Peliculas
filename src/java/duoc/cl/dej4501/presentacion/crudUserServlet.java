package duoc.cl.dej4501.presentacion;

import duoc.cl.dej4501.entidades.Usuario;
import duoc.cl.dej4501.negocio.UsuarioController;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "crudUserServlet", urlPatterns = {"/crudUserServlet"})
public class crudUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    public boolean userAdd(HttpServletRequest request, HttpServletResponse response,
            String nombre, String password, boolean estado)
            throws ServletException, IOException {
            HttpSession sesion = request.getSession();
            UsuarioController uSC = new UsuarioController((LinkedList<Usuario>)sesion.getAttribute("listaUsuarios"));
            if(uSC.add(nombre, password, estado)){
            }
            
            
        return false;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
