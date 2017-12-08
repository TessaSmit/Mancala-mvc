package nl.sogyo.mancala.web;

import nl.sogyo.mancala.*;

public class Mancala 
{
	private RegularBox firstBox;
	
	public Mancala()
	{	
		
	}
	
	public Mancala(RegularBox firstBox)
	{
		this.firstBox = firstBox;
	}
	
	public int getNumStones1()
	{
		return firstBox.getBox(0).getNumStones();
	}
	public int getNumStones2()
	{
		return firstBox.getBox(1).getNumStones();
	}
	public int getNumStones3()
	{
		return firstBox.getBox(2).getNumStones();
	}
	public int getNumStones4()
	{
		return firstBox.getBox(3).getNumStones();
	}
	public int getNumStones5()
	{
		return firstBox.getBox(4).getNumStones();
	}
	public int getNumStones6()
	{
		return firstBox.getBox(5).getNumStones();
	}
	
	public int getNumStones7()
	{
		return firstBox.getBox(6).getNumStones();
	}
	public int getNumStones8()
	{
		return firstBox.getBox(7).getNumStones();
	}
	public int getNumStones9()
	{
		return firstBox.getBox(8).getNumStones();
	}
	public int getNumStones10()
	{
		return firstBox.getBox(9).getNumStones();
	}
	public int getNumStones11()
	{
		return firstBox.getBox(10).getNumStones();
	}
	public int getNumStones12()
	{
		return firstBox.getBox(11).getNumStones();
	}
	public int getNumStones13()
	{
		return firstBox.getBox(12).getNumStones();
	}
	public int getNumStones14()
	{
		return firstBox.getBox(13).getNumStones();
	}
	public int getNumStones15()
	{
		return firstBox.getBox(14).getNumStones();
	}
	
	public int getScore1()
	{
		return firstBox.getPlayerOfBox().getScores()[0];
	}
	
	public int getScore2()
	{
		return firstBox.getPlayerOfBox().getScores()[1];
	}
	
	public Box getFirstBox()
	{
		return firstBox;
	}
	
	public Player getPlayer1()
	{
		return firstBox.getPlayerOfBox().getPlayer1();
	}
	
	public Player getPlayer2()
	{
		return firstBox.getPlayerOfBox().getPlayer2();
	}
	
	public Player getCurrentPlayer()
	{
		return firstBox.getPlayerOfBox().getCurrentPlayer();
	}
	
	public String getWinner()
	{
		String winner = "";
		if(this.getScore1() > this.getScore2())
		{
			winner = "Player 1 has won";
		}
		else if(this.getScore1() > this.getScore2())
		{
			winner = "Player 2 has won";
		}
		else if(this.getScore1() == this.getScore2())
		{
			winner = "It's a Tie";
		}
		return winner;
	}
	
	
	public String getCurrentPlayerPrint()
	{
		if(firstBox.getPlayerOfBox().getPlayer1() == firstBox.getPlayerOfBox().getCurrentPlayer())
		{
			return "Player 1";
		}
		else
		{
			return "Player 2";
		}
	}
}
