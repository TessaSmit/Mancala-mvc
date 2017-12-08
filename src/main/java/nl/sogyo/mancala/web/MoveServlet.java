package nl.sogyo.mancala.web;

import java.io.IOException;
import nl.sogyo.mancala.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MoveServlet
 */
@WebServlet("/MoveServlet")
public class MoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MoveServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Mancala myMancala = (Mancala) request.getSession(false).getAttribute("currentNumStones");
		boolean endGame = false;

		RegularBox firstBox = (RegularBox) myMancala.getFirstBox();
		try 
		{
			endGame = firstBox.move(Integer.parseInt(request.getParameter("move")));
		} 
		catch (CannotMoveBoxException e) 
		{
			// Do nothing
		}

		RequestDispatcher rd = null;
		if(endGame)
		{
			rd = request.getRequestDispatcher("endGame.jsp");
		}
		else
		{
			rd = request.getRequestDispatcher("mancalaBoardGame.jsp");
		}

		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
