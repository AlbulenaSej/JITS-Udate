package jits.beans;

public class MessageBean {
	
	String infoMsg;
	String actionMsg;
	
	public MessageBean(){
		setGeneralWelcome();
	}
	public void setNotLoggedIn() {
		this.infoMsg   = "Sie sind nicht angemeldet";
		this.actionMsg = "Bitte melden Sie sich an";
	}
	public void setLogoutSuccessful() {
		this.infoMsg   = "Sie haben sich abgemeldet";
		this.actionMsg = "Bitte melden Sie sich wieder an";
	}
	public void setLoginSuccessful() {
		this.infoMsg   = "Anmeldung erfolgreich";
		this.actionMsg = "Nun k�nnn Sie weiter shoppen.";
	}
	public void setLoginFailed() {
		this.infoMsg   = "Useridentifikation oder Passwort ist falsch";
		this.actionMsg = "Bitte versuchen Sie es erneut";
	}
	public void setRegistrationSuccessful() {
		this.infoMsg   = "Account wurde registriert";
		this.actionMsg = "Bitte gehen Sie jetzt zur Anmeldung";
	}
	public void setRegistrationSuccessful(String userid) {
		this.infoMsg   = "Account " + userid + " wurde registriert";
		this.actionMsg = "Bitte gehen Sie jetzt zur Anmeldung";
	}
	public void setAccountAlreadyExists() {
		this.infoMsg   = "Der Benutzer existiert bereits";
		this.actionMsg = "Bitte verwenden Sie einen anderen Username";
	}
	public void setAccountAlreadyExists(String userid) {
		this.infoMsg   = "Die Useridentifikation " + userid + " existiert bereits";
		this.actionMsg = "Bitte verwenden Sie einen anderen Useridentifikation";
	}
	public void setAnyError() {
		this.infoMsg   = "Es ist ein Fehler aufgetreten";
		this.actionMsg = "Bitte wenden Sie sich an Ihren IT-Support";
	}
	public void setRegistrationWelcome() {
		this.infoMsg   = "Willkommen zur Registrierung";
		this.actionMsg = "Bitte registrieren Sie sich";
	}

	public void setGeneralWelcome() {
		this.infoMsg   = "Willkommen bei JITS";
		this.actionMsg = "Bitte melden Sie sich an";
	}
	public String getInfoMsg() {
		return infoMsg;
	}
	public String getActionMsg() {
		return actionMsg;
	}
	public String getHtmlMessage(){
		String html = "";
		html += "<h3>" + this.getInfoMsg() + "</h3>\n";
		html += "<h5>" + this.getActionMsg() + "</h5>\n";
		return html;
	}
}
