<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loading | JITS</title>
</head>
<link type="text/css" rel="stylesheet" href="../css/index.css" />
<body>
	<jsp:useBean id="nb" class="jits.beans.NotizenBean" scope="session" />
	<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>

	<!-- HEADER -->
	<form action="../jsp/StartseiteAppl.jsp" method="get">
		<jsp:getProperty property="headerAsHtml" name="sb" />
	</form>

	<form action="StartseiteAppl.jsp" method="get">
		<div class="background1">
			<div class="Anfang">
				<div>
				<h3>Diese Seite ist aktuell noch in Bearbeitung. Wir bitten um Geduld...</h3>
				<div>
				<img src="../img/loading1.jpg">
				</div>
				</div>

				<div class="Anfangdiv">
					<input type="submit"
						name="zsartseite" value="Zurück zur Startseite">
				</div>
			</div><br>
		</div>
	</form>
	<!-- FOOTER -->
	<form action="../jsp/StartseiteAppl.jsp" method="get">
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
	</form>
</body>
</html>