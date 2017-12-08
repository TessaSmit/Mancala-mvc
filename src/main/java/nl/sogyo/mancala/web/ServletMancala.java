package nl.sogyo.mancala.web;

import nl.sogyo.mancala.*;
import java.io.IOException;
import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletMancala
 */
@WebServlet("/ServletMancala")
public class ServletMancala extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletMancala() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
			int initialStoneNumber = 4;
			RegularBox firstBox = new RegularBox(initialStoneNumber);
			Mancala initMancala = new Mancala(firstBox);
			
			HttpSession session = request.getSession();
			session.setAttribute("currentNumStones", initMancala);
		
	       RequestDispatcher rd = request.getRequestDispatcher("mancalaBoardGame.jsp");
	       rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
