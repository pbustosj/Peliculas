package duoc.cl.dej4501.presentacion;

import duoc.cl.dej4501.entidades.Usuario;
import duoc.cl.dej4501.negocio.UsuarioController;
import java.io.IOException;

import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet", "/login"})
public class loginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sesion = request.getSession();
        String username = request.getParameter("usuarioQl");
        String password = request.getParameter("contraQl");
        System.out.println(username);
        System.out.println(password);

        UsuarioController objUserController = new UsuarioController((LinkedList<Usuario>) sesion.getAttribute("listaUsuarios"));
        Usuario user = objUserController.login(username, password);
          // System.out.println(user.getNombre());

        if (user!=null) {
            Usuario objUserCon = objUserController.login(username, password);
            sesion.setAttribute("objUserCon", user);

        } else {
            sesion.setAttribute("msjErrorLogin", "Usuario no encontrado");

        }
        response.sendRedirect("login.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
