
<%@page import="java.sql.SQLException"%>
<%@page import="jits.beans.GUIBean"%>
<%@page import="jits.beans.MessageBean"%>
<%@page import="jits.beans.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="lb" class="jits.beans.LoginBean" scope="session" />
	<jsp:useBean id="mb" class="jits.beans.MessageBean" scope="session" />
	<jsp:useBean id="gb" class="jits.beans.GUIBean" scope="session" />
	
	<%!public String denullify(String s) {
		if (s == null)
			return "";
		else
			return s;
	}%>
	<%
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String login = this.denullify(request.getParameter("login"));
		String zurReg = this.denullify(request.getParameter("zurReg"));
		String comeFrom = this.denullify(request.getParameter("comeFrom"));

		if (login.equals("Anmelden")) {
			mb.setGeneralWelcome();
			lb.setUserid(userid);
			lb.setPassword(password);

			try {
				boolean loginOk = lb.checkUseridPassword();
				if (loginOk) {
					lb.setLoggedIn(true);
					mb.setLoginSuccessful();

					response.sendRedirect("../StartseiteView.jsp?comeFrom=LoginAppl");

				} else {
					lb.setLoggedIn(false);
					mb.setLoginFailed();
					response.sendRedirect("../LoginView.jsp");
				}
				
			} catch (SQLException se) {
				lb.setLoggedIn(false);
				mb.setAnyError();
				response.sendRedirect("../LoginView.jsp");
			}
		} 
		else if (zurReg.equals("zurReg")) {
			mb.setRegistrationWelcome();
			response.sendRedirect("../RegAppl.jsp?comeFrom=LoginAppl"); 
		} else if (!comeFrom.equals("")) {
			response.sendRedirect("../LoginView.jsp"); 
		} else {
			mb.setGeneralWelcome();
			response.sendRedirect("../LoginView.jsp"); 
		}
	%>
</body>
</html>