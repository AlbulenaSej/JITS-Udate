package jits.beans;

public class StartseiteBean {

	public StartseiteBean() {
	}

	// kopfzeile als Html
	public String getHeaderAsHtml() {
		String header = "";
		
		header += "<header class=\"header\">\n"
				+" <div class=\"brand\">\n"
				+" <button onclick=\"öffneMenue()\">\n"
				+" 	&#9776;\n"
				+" </button>\n"
				+" 		<a href=\"../jsp/StartseiteView.jsp\">JITS</a>\n"
				+" </div>\n"
				+" <div class=\"header-links\">\n"
				+" 	<a href=\"../jsp/WarenkorbView.jsp\">Warenkorb</a>\n"
				+" <a href=\"../jsp/LoginView.jsp\">Sing In</a>\n"
				+"	</div>\n"
				+"<aside class=\"seitenliste\">\n" 
				+"	<button class=\"seitenliste-schließen-button\" onclick=\"schließeMenue()\">X</button>\n" 
				+"		<ul>\n"
				+"				<li>\n"
				+"					<a href=\"../jsp/StartseiteView.jsp\">Startseite</a>\n"
				+"				</li>\n"
				+"				<li>\n"
				+"					<a href=\"../jsp/SoftdrinksView.jsp\">Softdrinks</a>\n"
				+"				</li>\n"
				+"				<li>\n" 
				+"					<a href=\"../jsp/SpirituoseView.jsp\">Spirituosen </a>\n" 
				+"			</li>\n" 
				+"			<li>\n"
				+"			<a href=\"../jsp/BierView.jsp\">Bier</a>\n"
				+"				</li>\n"
				+"				<li>\n" 
				+"					<a href=\"../jsp/SnacksView.jsp\">Snacks</a>\n"
				+"				</li>\n"
				+"				</ul>\n"
				+"	</aside>\n" 
				+"<script type=\"text/javascript\">\n"
				+"function öffneMenue(){\n"
				+"	document.querySelector(\".seitenliste\").classList.add(\"open\");\n"
				+"}\n"
				+"function schließeMenue(){\n"
				+"	document.querySelector(\".seitenliste\").classList.remove(\"open\")\n"
				+"}\n"
				+"</script>\n"
				+ "</header>";
			
		return header;
	}
	
	// fußzeile als Html
	public String getStartFooterAsHtml() {
		String footer = "";
		
		footer +=" <footer class=\"footer\">\n"
				+ " <a href=\"../jsp/ImpressumView.jsp\">Impressum</a>\n"
				+ "</footer>\n"
				+ "		<h3>Copyright Â© 2020 JITS</h3>";
	return footer; 
		}


}
