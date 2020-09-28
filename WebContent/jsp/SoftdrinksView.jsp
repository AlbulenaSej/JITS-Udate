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
			<p>Softdrinks</p>
			<ul class="produkte">
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Cola.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Coca-Cola 1L</a>
					</div>
					<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,50 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Cola light.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Coca-Cola light 1L</a>
					</div>
					<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,50 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Fanta.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html"> Fanta Orange 1L</a>
					</div>
					<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,50 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/MezzoMix.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Mezzo Mix 1L</a>
					</div>
					<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,50 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/Sprite.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Sprite 1L</a>
					</div>
					<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,50 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/RedBull.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Red Bull Energy Drink 0,25L</a>
					</div>
					<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,75 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/28 Black Acai.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">28 Black Acai 0,25L</a>
					</div>
					<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,75 Euro</div>
					</div>
				</li>
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../img/MarakujaNektar.jpg" alt ="produkte"/>
					<div class="produkt-name">
					<a href="produkt.html">Maracuja-Nektar 1L</a>
					</div>
					<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">3,50 Euro</div>
					</div>
				</li>
			</ul>
			</div>
		</main>
		
		<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</form>
</body>
</html>