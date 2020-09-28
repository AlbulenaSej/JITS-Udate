<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean" scope="session"></jsp:useBean>

	<%!
	public String denullify(String s) {
		if (s == null)
			return "";
		else
			return s;
	}%>

	<%
		String startseite = this.denullify(request.getParameter("Startseite"));
		String einloggen = this.denullify(request.getParameter("Sing In"));
		String register = this.denullify(request.getParameter("register"));
		String impressum = this.denullify(request.getParameter("impressum"));

		if (register.equals("Registrieren")) {
			response.sendRedirect("../jsp/RegView.jsp");
		}

		else if (einloggen.equals("Sing In")) {
			response.sendRedirect("../jsp/LoginView.jsp");
		}

		else if (startseite.equals("Startseite")) {
			response.sendRedirect("../jsp/StartseiteView.jsp");
		}

		else if (impressum.endsWith("Impressum")) {
			response.sendRedirect("../jsp/ImpressumView.jsp");
		}

		else {
			response.sendRedirect("../jsp/StartseiteView.jsp");
		}
	%>

</body>
</html>