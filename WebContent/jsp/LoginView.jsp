<%@page import="jits.beans.GUIBean"%>
<%@page import="jits.beans.MessageBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Einloggen JITS</title>
</head>
<link type="text/css" rel="stylesheet" href="../css/index.css" />

<jsp:useBean id="lb" class="jits.beans.LoginBean"
	scope="session" />

<jsp:useBean id="sb" class="jits.beans.StartseiteBean" scope="session" />
<body>

	<!-- HEADER -->

	<form action="../jsp/StartseiteAppl.jsp" method="get">
		<jsp:getProperty property="headerAsHtml" name="sb" />
	</form>

	<!-- CONTENT -->

	<form action="../jsp/LoginAppl.jsp" method="get">
		<div class="login-box">

			<h3>Sing In</h3>
			<div class="textbox">
				<i class="textbox"></i> <input type="text"
					name="userid" placeholder="Username"
					value='<jsp:getProperty name="lb" property="userid" />'>
			</div>

			<div class="textbox">
				<i class="textbox"></i> <input type="password" name="password"
					placeholder="Passwort" value="">
			</div>
			<a href="../jsp/LoadingView.jsp" id="a">Passwort vergessen?</a> 
			<input type="submit" class="neu" name="login" value="Anmelden">
			<a href="../LoginAppl.jsp?zurReg=zurReg">Neu bei JITS? Hier Registrieren</a>
		
		</div>
		<br> <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />

	</form>
</body>
</html>