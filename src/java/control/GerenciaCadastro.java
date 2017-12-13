package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
import model.Produto;
import model.Usuario;
import model.jdbc.ProdutoDAO;
import model.jdbc.UsuarioDAO;

public class GerenciaCadastro extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        PrintWriter out = response.getWriter();
        String acao = request.getParameter("acao");
        switch(acao) {
            case "Cadastrar Usuario":
                String login = request.getParameter("login");
                String senha = request.getParameter("senha");
                String confirmaSenha = request.getParameter("confirmaSenha");
                String email = request.getParameter("email");
                String cidade = request.getParameter("cidade");
                String tipo = request.getParameter("tipo");
                if (senha.equals(confirmaSenha)) {
                    try {
                        UsuarioDAO usuarioDAO = new UsuarioDAO();
                        ObservableList<Usuario> usuarios = usuarioDAO.selectUsuario();
                        boolean verificou = true;
                        for (int i = 0; i < usuarios.size(); i++) {
                            if (usuarios.get(i).getLogin().equals(login)) {
                                verificou = false;
                            }
                        }
                        if (verificou) {
                            if (tipo.equals("Revendedor")) {
                                Usuario usuario = new Usuario();
                                CriptografiaOtp criptografia = new CriptografiaOtp();
                                String chave = criptografia.genKey(senha.length());
                                String novaSenha = criptografia.criptografa(senha, chave);
                                usuario.setChaveSenha(chave);
                                usuario.setCidade(cidade);
                                usuario.setEmail(email);
                                usuario.setLogin(login);
                                usuario.setRevendedor(true);
                                usuario.setSenha(novaSenha);
                                usuarioDAO.addUsuario(usuario);
                                out.println("<html><body><script>alert('Usuario Cadastrado!');location.href='login2.jsp'</script></body></html>");
                            } else {
                                Usuario usuario = new Usuario();
                                CriptografiaOtp criptografia = new CriptografiaOtp();
                                String chave = criptografia.genKey(senha.length());
                                String novaSenha = criptografia.criptografa(senha, chave);
                                usuario.setChaveSenha(chave);
                                usuario.setCidade(cidade);
                                usuario.setEmail(email);
                                usuario.setLogin(login);
                                usuario.setRevendedor(false);
                                usuario.setSenha(novaSenha);
                                usuarioDAO.addUsuario(usuario);
                                out.println("<html><body><script>alert('Usuario Cadastrado!');location.href='login2.jsp'</script></body></html>");
                            }
                        } else {
                            out.println("<html><body><script>alert('Já existe um usuario com esse login!');location.href='login2.jsp'</script></body></html>");
                        }
                    } catch (ClassNotFoundException | SQLException ex) {
                        Logger.getLogger(GerenciaCadastro.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    
                } else {
                    out.println("<html><body><script>alert('Confirme a senha corretamente!');location.href='login2.jsp'</script></body></html>");
                }
            break;
            case "Cadastrar Produto":
                String nome = request.getParameter("nome");
                int quantidade = Integer.valueOf(request.getParameter("quantidade"));
                float valor = Float.valueOf(request.getParameter("valor"));
                String descricao = request.getParameter("descricao");
                HttpSession sessao = request.getSession(false);
                Usuario usuario = (Usuario) sessao.getAttribute("userRevendedor");
                ProdutoDAO produtoDAO = new ProdutoDAO();
                boolean verificou = true;
                try {
                    ObservableList<Produto> produtos = produtoDAO.selectProduto();
                    for (int i = 0; i < produtos.size(); i++) {
                        if (produtos.get(i).getVendedor() == usuario.getId_usuario()) {
                            verificou = false;
                        }
                    }
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(GerenciaCadastro.class.getName()).log(Level.SEVERE, null, ex);
                }
                if (verificou) {
                    Produto produto = new Produto();
                    produto.setDescricao(descricao);
                    produto.setNome(nome);
                    produto.setQuantidade(quantidade);
                    produto.setValor(valor);
                    try {
                        produtoDAO.addProduto(produto);
                    } catch (ClassNotFoundException ex) {
                        Logger.getLogger(GerenciaCadastro.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    RequestDispatcher rd = request.getRequestDispatcher("paginasRevendedor/homeRevendedor.jsp");
                    rd.forward(request, response);
                }
            break;
            default:
                System.out.println("Erro no switch");
        }
        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
