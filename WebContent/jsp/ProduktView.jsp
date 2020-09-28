<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript"src="../js/Startseite.js"></script>
<script type="text/javascript"src="../js/Startseite1.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
	<form action="../jsp/StartseiteAppl.jsp" method="get">

		<!-- HEADER -->
		<jsp:getProperty property="headerAsHtml" name="sb" />
		
		<!-- CONTENT -->
		<main class="main">
			<div class="content">
			<p>Bier </p>
			<ul class="produkte">
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Lagerbier Hell.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Lagerbier Hell 0,5L</a>
					</div>
					<div class="produkt-marke">Bier</div>
					<div class="produkt-preis">2,75 Euro</div>
					</div>
				</li>
				</ul>
			</div>
		</main>
	</form>
</body>
</html>