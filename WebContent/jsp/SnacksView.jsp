<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript"src="../js/Startseite.js"></script>
<script type="text/javascript"src="../js/Startseite1.js"></script>
<title>JITS</title>
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
			<p>Snacks und Süßigkeiten </p>
			<ul class="produkte">
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Haribo Goldbären.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Haribo Goldbären</a>
					</div>
					<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">2,50 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Haribo Schlümpfe.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Haribo Schlümpfe 200g</a>
					</div>
					<div class="produkt-marke">Snack</div>
					<div class="produkt-preis">2,50 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Popcorn salzig.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Mikrowellen-Popcorn salzig</a>
					</div>
					<div class="produkt-marke">Snack</div>
					<div class="produkt-preis">1,99 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Popkorn süß.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Mikrowellen-Popcorn süß</a>
					</div>
					<div class="produkt-marke">Snack</div>
					<div class="produkt-preis">1,99 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Chips_funnyfrisch.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Funny-frisch Chipsfrisch - Ungarisch</a>
					</div>
					<div class="produkt-marke">Snack</div>
					<div class="produkt-preis">2,50 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Toffifee.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Toffifee </a>
					</div>
					<div class="produkt-marke">Snack</div>
					<div class="produkt-preis">3,25 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Pringles hot paprika chilli.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Pringles hot paprika chilli </a>
					</div>
					<div class="produkt-marke">Snack</div>
					<div class="produkt-preis">3,00 Euro</div>
					</div>
				</li>
			</ul>
			</div>
		</main>
		</form>
</body>
</html>