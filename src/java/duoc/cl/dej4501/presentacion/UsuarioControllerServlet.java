
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

@WebServlet(name = "UsuarioControllerServlet", urlPatterns = {"/usuarioControllerServlet","/usuario"})
public class UsuarioControllerServlet extends HttpServlet {

  

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        LinkedList<Usuario> lU =  (LinkedList<Usuario>)sesion.getAttribute("listaUsuarios");
        String op = request.getParameter("opServlet");
        UsuarioController uC =  new UsuarioController(lU);
        if(op.compareToIgnoreCase("1")==0){
            if(uC.add(op, op, true)){
                sesion.setAttribute("listaUsuarios", uC.getListaUsuario());
                sesion.setAttribute("userAddOK","Usuario Agregado exitosamente");
                
            }else{
             sesion.setAttribute("userAddNOOK","No se ha podido agregar Usuario");
            }
           
            
        }
        
        if(op.compareToIgnoreCase("2")==0){
        
        }
        
        if(op.compareToIgnoreCase("3")==0){
        
        }
       response.sendRedirect("Usuario/ingresarUsuario.jsp"); 
       
       
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
