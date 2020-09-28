package jits.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import de.hwg_lu.bw.jdbc.NoConnectionException;
import de.hwg_lu.bw.jdbc.PostgreSQLAccess;

public class NotizenBean {

	String notiz;
	Connection dbConn;
	String userid;

	public NotizenBean() throws SQLException {
		super();

		this.notiz = "";
		this.dbConn = new PostgreSQLAccess().getConnection();
		// this.getNotizDateienfromDB();
		this.userid = "";
	}

	public NotizenBean(String notiz, String userid) throws SQLException {
		super();
		this.notiz = notiz;
		this.userid = userid;
		this.getNotizDateienfromDB();
	}

	public void createNotizTable() throws SQLException {
		String sql = "create table notizen" + this.userid + " (userid VARCHAR(10)	NOT NULL PRIMARY KEY,"
				+ "notiz 	VARCHAR(2000) 	NOT NULL )";

		System.out.println(sql);

		try {
			Statement myStat = dbConn.createStatement();
			myStat.executeUpdate(sql);

		} catch (SQLException se) {
			System.out.println("B DB schreiben fehlgeschlagen, Mist!");
			System.out.println("SQLCode=" + se.getErrorCode());
			System.out.println("Error-Message=" + se.getMessage());

		}
		System.out.println("Tabelle <useridentifikation>Notizen angelegt");

		
		// ---------------------- insert --------------------
		String sql1 = "insert into notizen" + this.userid + " (userid,notiz) " + "values (?,?)";
		System.out.println(sql);
		try {

			PreparedStatement prep = dbConn.prepareStatement(sql1);
			prep.setString(1, this.userid);
			prep.setString(2, " ");

			prep.executeUpdate();

		} catch (

		SQLException se) {

			System.out.println("B DB schreiben fehlgeschlagen, Mist!");
			System.out.println("SQLCode=" + se.getErrorCode());
			System.out.println("Error-Message=" + se.getMessage());
		}

		this.getNotizDateienfromDB();

		System.out.println("Notiz erfolgreich gespeichert");
	}

	public void insertNotiz() {

		String sql = "insert into notizen" + this.userid + " (userid,notiz) " + "values (?,?)";
		System.out.println(sql);
		try {

			PreparedStatement prep = dbConn.prepareStatement(sql);
			prep.setString(1, this.userid);
			prep.setString(2, this.notiz);

			prep.executeUpdate();

		} catch (

		SQLException se) {

			System.out.println("B DB schreiben fehlgeschlagen, Mist!");
			System.out.println("SQLCode=" + se.getErrorCode());
			System.out.println("Error-Message=" + se.getMessage());
		}

		System.out.println("Notiz erfolgreich gespeichert");
	}

	public void updateNotizen() throws SQLException {
		String sql = "UPDATE notizen" + this.userid + " SET notiz= ? WHERE userid = ?";
		System.out.println(sql);
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, this.notiz);
		prep.setString(2, this.userid);
		prep.executeUpdate();
		System.out.println("Update erfolgreich");
	}

	public void getNotizDateienfromDB() throws SQLException {

		String sql = "select * from notizen" + this.userid;

		System.out.println(sql);

		try {

			ResultSet dbResult = dbConn.createStatement().executeQuery(sql);
			while (dbResult.next()) {

				String userid = dbResult.getString("userid");
				String notiz = dbResult.getString("notiz");
				this.setNotiz(notiz);
				this.setUserid(userid);
			}
			
		} catch (SQLException se) {

			System.out.println("B DB schreiben fehlgeschlagen, Mist!");
			System.out.println("SQLCode=" + se.getErrorCode());
			System.out.println("Error-Message=" + se.getMessage());
		}
	}

	public String getHTMLNotizen2() {

		String html1 = "";

		html1 += "<br><h3> Notizen von " + this.userid + "</h3>";
		html1 += "<textarea rows='50' cols='90%' name='notiz' style='position:relative;'>";
		html1 += this.notiz;
		html1 += "</textarea>";

		return html1;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getNotiz() {
		return notiz;
	}

	public void setNotiz(String notiz) {
		this.notiz = notiz;
	}

}
