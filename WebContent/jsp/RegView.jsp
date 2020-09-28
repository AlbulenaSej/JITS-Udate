<%@page import="jits.beans.GUIBean"%>
<%@page import="jits.beans.MessageBean"%>
<%@page import="jits.beans.AccountBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrieren JITS</title>
<script type="text/javascript" src="../js/BW4S.js"></script>

<link type="text/css" rel="stylesheet" href="../css/index.css" />
</head>

<body>
	<jsp:useBean id="ab" class="jits.beans.AccountBean" scope="session" />
	<jsp:useBean id="mb" class="jits.beans.MessageBean" scope="session" />
	<jsp:useBean id="gb" class="jits.beans.GUIBean" scope="session" />
	<jsp:useBean id="sb" class="jits.beans.StartseiteBean" scope="session"></jsp:useBean>

	<!-- HEADER -->

	<form action="../jsp/StartseiteAppl.jsp" method="get">
		<jsp:getProperty property="headerAsHtml" name="sb" />
	</form>

	<!-- CONTENT -->

	<form id="regForm" action="../RegAppl.jsp" method="get"
		onsubmit="return inputCheck(this)">

		<div class="reg-box">
			<h1>Registrieren</h1>

			<div class="textbox">
				<i ></i> <input type="text"
					name="userid" placeholder="UserId"
					value='<jsp:getProperty name="ab" property="userid" />'
					onkeyup="checkUserid(this.value)"
					onchange="checkUserid(this.value)" />
			</div>
			<div class="fehler" id="useridMsgFeld"></div>

			<div class="textbox">
				<i></i> <input type="password" name="password"
					placeholder="Passwort" value="" onkeyup="checkPassword(this.value)" />
			</div>
			<div class="fehler" id="passwordMsgFeld"></div>

			<div class="textbox">
				<i></i><input type="text" name="username"
					placeholder="Username"
					value='<jsp:getProperty name="ab" property="username" />'
					onkeyup="checkUsername(this.value)" />
			</div>
			<div class="fehler" id="usernameMsgFeld"></div>

			<div class="textbox">
				<i></i><input type="text" name="email"
					placeholder="E-Mail"
					value='<jsp:getProperty name="ab" property="email" />' />
			</div>
			<div class="fehler" id="emailMsgFeld"></div>

			<input type="submit" class="btn" name="register" value="Registrieren"
				onclick="setButton(this.value)" id="detail" /> <input type="submit"
				class="btn" name="zurueck" value="Zurück zum Login"
				onclick="setButton(this.value)" />
		</div>
	</form>

	
</body>
</html>