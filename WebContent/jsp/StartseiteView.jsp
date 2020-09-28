<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript"src="../js/Startseite.js"></script>

<title>JITS</title>
</head>
<body>
	<jsp:useBean id="sb" class="jits.beans.StartseiteBean" scope="session"></jsp:useBean>
	<form action="../jsp/StartseiteAppl.jsp" method="get">

		<!-- HEADER -->
		<jsp:getProperty property="headerAsHtml" name="sb" />

		<!-- CONTENT -->
		<aside class="seitenliste">
		<button class="seitenliste-schließen-button" onclick="schließeMenue()">X</button>
		<ul>
			<li>
				<a href="../html/Softdrinks.html">Softdrinks</a>
			</li>
			<li>
				<a href="../html/Spirituosen.html">Spirituosen </a>
			</li>
			<li>
				<a href="../html/Bier.html">Bier</a>
			</li>
			<li>
				<a href="../html/Snacks.html">Snacks</a>
			</li>
			</ul>
		</aside>
		<main class="main">
		<img class="logo-image" src="../img/JITSLOGO.png" alt ="logo"/>
			<div class="content">
			<p>Herzlich Willkommen! 
			</br>
			</br>
			JITS ist ein Nachtlieferservice, wir liefern dir Getränke, Snacks und bereits zusammengestellte Pakete direkt an die Haustür.  </br></br>
			Unsere Spezial Paket Angebote: </p>
			<ul class="produkte">
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/ComboMädels.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="ProduktView.jsp">Mädelsabend</a>
					</div>
					<div class="produkt-marke">Paket</div>
					<div class="produkt-preis">48,00 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/ComboMänner.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Männerabend</a>
					</div>
					<div class="produkt-marke">Paket</div>
					<div class="produkt-preis">55,00 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/ComboNetflixAndChill.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Netflix and Chill</a>
					</div>
					<div class="produkt-marke">Paket</div>
					<div class="produkt-preis">15,00 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/ComboPartyabend.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Partyabend</a>
					</div>
					<div class="produkt-marke">Paket</div>
					<div class="produkt-preis">93,00 Euro</div>
					</div>
				</li>
				
			</ul>
			</div>
		</main>

		<br> <br> <br>


		<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</form>
</body>
</html>