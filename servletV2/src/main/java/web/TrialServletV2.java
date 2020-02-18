package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TrialServletV1
 */
@WebServlet(value = "/servletV2")
public class TrialServletV2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TrialServletV2() {
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
		response.setContentType("text/html");

		PrintWriter html = response.getWriter();
		html.println("<HTML>");
		html.println("<BODY>");
		html.println("<br>Port occupé coté client: " + request.getRemotePort());
		html.println("<br>Adresse IP client: " + request.getRemoteAddr());
		html.println("<br>Nom d'hôte client: " + request.getRemoteHost());
		html.println("<br>nom utilisateur client: " + request.getRemoteUser());
		html.println("<br>Nom du serveur: " + request.getServerName());
		html.println("<br>Port occupé coté serveur: " + request.getServerPort());
		html.println("<br>Type de dispatcher: " + request.getDispatcherType());
		html.println("<br>Nom du procotole utilisé pour la requête: " + request.getScheme());
		html.println("<br>Verbe HTTP utilisé: " + request.getMethod());
		html.println("<br>la requête est sécurisé ? " + request.isSecure());
		html.println("<br></BODY>");
		html.println("</HTML>");

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
