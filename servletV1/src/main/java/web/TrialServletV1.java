package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TrialServletV1
 */
@WebServlet(value = "/servletV1")
public class TrialServletV1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TrialServletV1() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		System.out.println("Port occup� cot� client: " + request.getRemotePort());
		System.out.println("Adresse IP client: " + request.getRemoteAddr());
		System.out.println("Nom d'h�te client: " + request.getRemoteHost());
		System.out.println("nom utilisateur client: " + request.getRemoteUser());
		System.out.println("Nom du serveur: " + request.getServerName());
		System.out.println("Port occup� cot� serveur: " + request.getServerPort());
		System.out.println("Type de dispatcher: " + request.getDispatcherType());
		System.out.println("Nom du procotole utilis� pour la requ�te: " + request.getScheme());
		System.out.println("Verbe HTTP utilis�: " + request.getMethod());
		System.out.println("la requ�te est s�curis� ? " + request.isSecure());


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
