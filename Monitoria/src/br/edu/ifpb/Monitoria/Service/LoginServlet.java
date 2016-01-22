package br.edu.ifpb.Monitoria.Service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.ifpb.Monitoria.Entidades.Usuario;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	 
	/*
	 * */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*GeneralDAO bd = new GeneralDAO(); //criando conex�o com a classe geral do BD
		UsuarioDAO usuario = new UsuarioDAO();*/
		Usuario user = new Usuario();
		
		//bd.abrirConexao();
		
		String home = new String("boasVindas.jsp");
		//Recuperando valores do formul�rio
		user.setLogin(request.getParameter("nome"));
		user.setSenha(request.getParameter("senha"));
		
		if (user.validaUsuario("fulano", "123")){
			System.out.println("1");
		}
		

		/*// Valida��o do Usu�rio admin no BD
		if (user.getLogin().equals("admin") && user.getSenha().equals("admin")) {
			HttpSession session = request.getSession();
			session.setAttribute("nome", user.getLogin());
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("adminResources.html");
			dispatcher.forward(request, response);
		} else //valida��o dos usu�rios gerais
			if (usuario.consultaUser(user) == true) {
			HttpSession session = request.getSession();
			session.setAttribute("nome", user.getLogin());
			RequestDispatcher dispatcher = request.getRequestDispatcher(home);
			dispatcher.forward(request, response);
		}
		
		bd.fecharConexao();*/
		
		HttpSession session = request.getSession();
		session.setAttribute("login", user.getLogin());
		session.setAttribute("logado", 1);
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");

		dispatcher.forward(request, response);
		
	}

}
