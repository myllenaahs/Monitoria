package br.edu.ifpb.Monitoria.Service;


import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.ifpb.Monitoria.DAO.*;
import br.edu.ifpb.Monitoria.Entidades.Cliente;

@WebServlet("/cadastroServlet")
public class cadastroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	GeneralDAO bd = new GeneralDAO();
	UsuarioDAO user = new UsuarioDAO ();
	

	public cadastroServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		GeneralDAO bd = new GeneralDAO();
		UsuarioDAO user = new UsuarioDAO ();

		Cliente cliente = new Cliente ();
		String home = new String("index.html");
		RequestDispatcher dispatcher = request.getRequestDispatcher(home);
		
		//Recuperando valores do formulario de cadastro
		
		cliente.setLogin(request.getParameter("name"));
		cliente.setSenha(request.getParameter("senha"));
		cliente.setData(request.getParameter("data"));
		cliente.setSexo(request.getParameter("genero")); 
		cliente.setCPF(request.getParameter("cpf"));
		
		bd.abrirConexao();
		user.insereUsuario(cliente);
		bd.fecharConexao();
		
		HttpSession session = request.getSession();
		session.setAttribute("name", cliente.getLogin());

		dispatcher.forward(request, response);
	}

}