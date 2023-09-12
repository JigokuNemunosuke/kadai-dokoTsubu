package model;

public class Mutter {
	private int id;
	private String userName;
	private String text;
	
	public Mutter () {}
	
	public Mutter (String userName, String text) {
		this.userName = userName;
		this.text = text;
	}
		
	public Mutter (int id, String userName, String text) {
		this.id = id;
		this.userName = userName;
		this.text = text;
	}

	public int getId() { return id; }
	public void setId(int id) { this.id = id; }

	public String getUserName() { return userName; }
	public void setUserName(String userName) { this.userName = userName; }

	public String getText() { return text; }
	public void setText(String text) { this.text = text; }
}
