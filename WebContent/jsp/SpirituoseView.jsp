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
			<p>Spirituosen </p>
			<ul class="produkte">
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Haribo Goldbären.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Absolut Vodka 0,7L</a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">21,95 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Bailey´s.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Baileys - Original 0,7L </a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">18,95 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Bombay Gin Blau.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Bombay Sapphire 0,7L </a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">27,95 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Captain Morgen.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Captain Morgan 0,7L</a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">18,00 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Wodka Gobartschow.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Vodka Gorbatschow 0,7L</a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">14,95 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Gordon´s Gin.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Gordon´s Gin 0,7L</a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">18,95 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Jack Daniels.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Jack Daniel´s 0,7L</a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">24,95 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Jägermeister.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Jägermeister 0,7L</a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">21,95 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Jim Bean.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Jim Beam  0,7L</a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">19,95 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Malibu.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Malibu 0,7L</a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">16,95 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Sierra Tequila mit zitronen.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Sierra Tequila Silver 0,7L + frische Zitronen</a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">18,95 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Skyy Vodka.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Skyy Vodka 0,7L</a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">23,95 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Three sixty vodka.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Three Sixty Vodka 0,7L </a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">21,95 Euro</div>
					</div>
				</li>
			</ul>
			</div>
		</main>
</form>
</body>
</html>