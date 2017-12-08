<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="nl.sogyo.mancala.web.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<html>

<head>
<link href="boardGame.css" type="text/css" rel="stylesheet">
<meta charset="UTF-8">
<title>Mancala Game</title>
</head>

<body>
	<div class="Theme">
		<div class="header">
			<div>
				<h1>Mancala Game</h1>
			</div>
		</div>
		<div class="boardOptions">
			<div>
				<div class="OptionText">
					Please choose an option
					<core:out
						value="${sessionScope.currentNumStones.currentPlayerPrint}" />
				</div>
			</div>
			<div class="board">
				<div class="Kalaha">
					<div class="KalahaValue">
						<core:out value="${sessionScope.currentNumStones.numStones14}" />
					</div>
				</div>
				<div>
					<div class="boardpart">
						<core:if
							test="${sessionScope.currentNumStones.currentPlayer == sessionScope.currentNumStones.player1}">
							<ul class="Holes">
								<li><core:out
										value="${sessionScope.currentNumStones.numStones13}" /></li>
								<li><core:out
										value="${sessionScope.currentNumStones.numStones12}" /></li>
								<li><core:out
										value="${sessionScope.currentNumStones.numStones11}" /></li>
								<li><core:out
										value="${sessionScope.currentNumStones.numStones10}" /></li>
								<li><core:out
										value="${sessionScope.currentNumStones.numStones9}" /></li>
								<li><core:out
										value="${sessionScope.currentNumStones.numStones8}" /></li>
							</ul>
						</core:if>
						<core:if
							test="${sessionScope.currentNumStones.currentPlayer == sessionScope.currentNumStones.player2}">
							<ul class="HolesHover">
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=12">
									<li><core:out
											value="${sessionScope.currentNumStones.numStones13}" /></li>
								</a>
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=11"><li>
										<core:out value="${sessionScope.currentNumStones.numStones12}" />
								</li></a>
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=10">
									<li><core:out
											value="${sessionScope.currentNumStones.numStones11}" /></li>
								</a>
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=9">
									<li><core:out
											value="${sessionScope.currentNumStones.numStones10}" /></li>
								</a>
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=8">
									<li><core:out
											value="${sessionScope.currentNumStones.numStones9}" /></li>
								</a>
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=7">
									<li><core:out
											value="${sessionScope.currentNumStones.numStones8}" /></li>
								</a>
							</ul>
						</core:if>
					</div>
					<div class="boardpart">
						<core:if
							test="${sessionScope.currentNumStones.currentPlayer == sessionScope.currentNumStones.player2}">
							<ul class="Holes ">
								<li><core:out
										value="${sessionScope.currentNumStones.numStones1}" /></li>
								<li><core:out
										value="${sessionScope.currentNumStones.numStones2}" /></li>
								<li><core:out
										value="${sessionScope.currentNumStones.numStones3}" /></li>
								<li><core:out
										value="${sessionScope.currentNumStones.numStones4}" /></li>
								<li><core:out
										value="${sessionScope.currentNumStones.numStones5}" /></li>
								<li><core:out
										value="${sessionScope.currentNumStones.numStones6}" /></li>
							</ul>
						</core:if>

						<core:if
							test="${sessionScope.currentNumStones.currentPlayer == sessionScope.currentNumStones.player1}">
							<ul class="HolesHover ">
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=0">
									<li><core:out
											value="${sessionScope.currentNumStones.numStones1}" /></li>
								</a>
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=1"><li>
										<core:out value="${sessionScope.currentNumStones.numStones2}" />
								</li></a>
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=2"><li>
										<core:out value="${sessionScope.currentNumStones.numStones3}" />
								</li></a>
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=3"><li>
										<core:out value="${sessionScope.currentNumStones.numStones4}" />
								</li></a>
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=4"><li>
										<core:out value="${sessionScope.currentNumStones.numStones5}" />
								</li></a>
								<a href="http://localhost:9191/mancala-mvc/MoveServlet?move=5"><li>
										<core:out value="${sessionScope.currentNumStones.numStones6}" />
								</li></a>
							</ul>
						</core:if>
					</div>
				</div>
				<div class="Kalaha">
					<div class="KalahaValue">
						<core:out value="${sessionScope.currentNumStones.numStones7}" />
					</div>
				</div>
			</div>
		</div>
</body>



</html>
