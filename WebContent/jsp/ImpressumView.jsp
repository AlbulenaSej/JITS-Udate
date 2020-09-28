<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript"src="../js/Startseite.js"></script>
<script type="text/javascript"src="../js/Startseite1.js"></script>

<title>Impressum | JITS</title>
</head>
<body>
	<jsp:useBean id="sb" class="jits.beans.StartseiteBean" scope="session"></jsp:useBean>
	<form action="../jsp/StartseiteAppl.jsp" method="get">

		<!-- HEADER-->

		<jsp:getProperty property="headerAsHtml" name="sb" />
		<h3>Impressum </h3></br></br></br>

		<!-- CONTENT -->

		<main class="main"> </br></br></br></br></br></br>
			<p>Angaben gemäß § 5TMG </br></br></br>
			  Albulena Sejdijaj </br>
				Johannis ...</br>
				67059 Ludwigshafen am Rhein </br></br></br>
			
			Kontakt</br></br>
			Telefon: +49123456789 </br>
			E-Mail: noname@jits-service.de </br></br>
			</br></br>
			Haftung für Inhalte</br></br>
			Als Diensteanbieter sind wir gemäß §7 Abs.1 TMG </br>
			für eigene Inhalte auf diesen Seiten nach dem allgeeinen Gesetz verantwortlch. Nach §§8 bis 10 </br></br>
			TMG sind wir als Dienstanbieter jedoch nicht verpflichtet, übermittelt oder gespeicherte fremde</br></br>
			Informationen zu überwachung oder nach Umständen zu forscen, die auf eine rechtswiedrige </br></br>
			Tätigkeit hinweisen.</p></br></br></br>
		</main>


		<!-- FOOTER -->
		</br></br></br>
		</br></br></br></br></br></br>
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
		 
	</form>
</body>
</html>