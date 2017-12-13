package control;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.collections.ObservableList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CriptografiaOtp;
import model.Usuario;
import model.jdbc.UsuarioDAO;

public class GerenciaLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        HttpSession sessao = request.getSession(false);
        sessao.invalidate();
        RequestDispatcher rd = request.getRequestDispatcher("/login2.jsp");
        rd.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String acao = request.getParameter("acao");
        switch(acao){
            case "login":
                try {
                    String login = request.getParameter("login");
                    String senha = request.getParameter("senha");
                    UsuarioDAO usuarioDAO = new UsuarioDAO();
                    ObservableList<Usuario> usuarios = usuarioDAO.selectUsuario();
                    CriptografiaOtp criptografia = new CriptografiaOtp();
                    String senhaUsuario;
                    String chaveUsuario;
                    boolean logou = false;
                    for (Usuario usuario : usuarios) {
                        chaveUsuario = usuario.getChaveSenha();
                        senhaUsuario = usuario.getSenha();
                        senhaUsuario = criptografia.decriptografa(senhaUsuario, chaveUsuario);
                        if (usuario.getLogin().equals(login) && senhaUsuario.equals(senha)) {
                            
                            if (usuario.isRevendedor()) {
                                HttpSession sessao = request.getSession();
                                sessao.setAttribute("userRevendedor", usuario);
                                logou = true;
                                RequestDispatcher rd = request.getRequestDispatcher("/paginasRevendedor/homeRevendedor.jsp");
                                rd.forward(request, response);
                            } else {
                                HttpSession sessao = request.getSession();
                                sessao.setAttribute("userCliente", usuario);
                                logou = true;
                                RequestDispatcher rd = request.getRequestDispatcher("/paginasCliente/homeCliente.jsp");
                                rd.forward(request, response);
                            }
                        } 
                    }
                    if (!logou) {
                        RequestDispatcher rd = request.getRequestDispatcher("/Erro.jsp");
                        rd.forward(request, response);
                    }
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(GerenciaLogin.class.getName()).log(Level.SEVERE, null, ex);
                }
                
            break;
            default:
                System.out.println("Erro no Switch");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
