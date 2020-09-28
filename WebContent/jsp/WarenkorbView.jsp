<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   
<link rel="stylesheet" href="../css/Warenkorb.css" />
<link rel="stylesheet" href="../css/index.css" />
<script type="text/javascript"src="../js/store.js"></script>
<title>JITS Warenkorb</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
	<form action="../jsp/StartseiteAppl.jsp" method="get">

		<!-- HEADER -->
		<jsp:getProperty property="headerAsHtml" name="sb" />
		
		<!-- CONTENT -->
     
        <section class="container content-section">
            <h2 class="section-header">Dein Warenkorb</h2>
            <div class="cart-row">
                <span class="cart-item cart-header cart-column">Artikel</span>
                <span class="cart-price cart-header cart-column">Preis</span>
                <span class="cart-quantity cart-header cart-column">Menge</span>
            </div>
            <button class="btn btn-primary btn-purchase" type="button">PURCHASE</button>
        </section>
        <footer class="main-footer">
            <div class="container main-footer-container">
                <h3 class="band-name">JITS</h3>
                <ul class="nav footer-nav">
                </ul>
            </div>
        </footer>
        </form>
    </body>
</html>
