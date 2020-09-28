package jits.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import de.hwg_lu.bw.jdbc.PostgreSQLAccess;

public class Warenkorb {

	String produkt;
	String produktmarke;
	double preis;
	

	public Warenkorb() {

	}

	public Warenkorb(String produkt, String produktmarke, double preis) {
		super();
		this.produkt = produkt;
		this.produktmarke = produktmarke;
		this.preis = preis;

	}

	// Artikel vom Warenkorb löschen

	public void deleteArtikelVonWarenkorb(String produktmarke) throws SQLException {
		String sql = "DELETE FROM warenkorb WHERE produkt = ?";
		System.out.println(sql);
		Connection dbConn = new PostgreSQLAccess().getConnection();
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, produktmarke);
		prep.executeUpdate();
	}

	public double summeBerechnen() {
		double summe = 0.0;

		summe = this.preis;

		return summe;
	}

	public String getProdukt() {
		return produkt;
	}

	public void setProdukt(String produkt) {
		this.produkt = produkt;
	}

	public String getProduktmarke() {
		return produktmarke;
	}

	public void setProduktmarke(String produktmarke) {
		this.produktmarke = produktmarke;
	}

	public double getPreis() {
		return preis;
	}

	public void setPreis(double preis) {
		this.preis = preis;
	}

}
