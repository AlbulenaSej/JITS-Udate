package jits.beans;

public class GUIBean {
	public GUIBean() {
	}

	public String getHtmlHeadline(){
		String html = "";
		html +="<table>\n";
		html +="<tr>\n";
		html +="	<td>\n";
		html +="		<h4>Logi In</h4>\n";
		html +="	</td>\n";
		html +="	<td>\n";
		html +="		<img src='../img/JITSLOGO.png\' width='150' />\n";	
		html +="	</td>\n";
		html +="</tr>\n";
		html +="</table>\n";
		return html;
	}
}
