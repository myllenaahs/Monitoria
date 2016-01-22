package br.edu.ifpb.Monitoria.Entidades;

public class Usuario {
	
	private String login;
	private String senha;
	
	public Usuario(){
		this.login="";
		this.senha="";
	}
	
	public Usuario(String login, String senha){
		this.login=login;
		this.senha=senha;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	//Função que compara login e senha do objeto com parâmetros enviados.
	public boolean validaUsuario(String nome, String senha){
		
		if(this.login.equals(nome) && this.senha.equals(senha)){
			return true;
		}
			return false;
		
	}
	
}
