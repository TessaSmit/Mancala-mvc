<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import = "nl.sogyo.mancala.web.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<html>

<head>
	<link href="boardGame.css" type="text/css" rel = "stylesheet">
    <meta charset="UTF-8">
    <title>Mancala Game</title>
</head>

<body>
<div class = "Theme">
	<div class = "header">
	<div><h1>Mancala Game</h1></div>
	</div>
	<div class = "boardOptions">
	<div>
	<div class = "OptionText">The Game has ended</div>
	</div>
	<div>
	<div class = "OptionText">
	<div>
		Score of Player 1: <core:out value="${sessionScope.currentNumStones.score1}"/>
	</div class = "">
	<div>
		Score of Player 2: <core:out value="${sessionScope.currentNumStones.score2}"/>
	</div>
	<div>
		<core:out value="${sessionScope.currentNumStones.winner}"/>
	</div>
	</div>
	</div>
	<div class = "board">
	<div class = "Kalaha">
	<div class = "KalahaValue"><core:out value="${sessionScope.currentNumStones.score2}"/></div>
	</div>
	
	<div>
	<div class = "boardpart">
		<ul class = "Holes">
			 <li>
			<core:out value="0"/></li>
			<li>
			<core:out value="0"/></li>
			 <li>
			<core:out value="0"/></li>
			<li>
			<core:out value="0"/></li>
			<li>
			<core:out value="0"/></li>
			 <li>
			<core:out value="0"/></li>
		</ul>
	</div>
		<div class = "boardpart">
		<ul class = "Holes ">
			
			<li> 
			<core:out value="0" />
			</li>
			<li>
			<core:out value="0" /></li>
			<li>
			<core:out value="0" /></li>
			<li>
			<core:out value="0" /></li>
			<li>
			<core:out value="0" /></li>
			<li>
			<core:out value="0" /></li>
		</ul>
	</div>
	</div>
	<div class = "Kalaha">
		<div class = "KalahaValue"><core:out value="${sessionScope.currentNumStones.score1}"/></div>
	</div>
	</div>
</div>
</body>



</html>
