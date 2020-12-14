package app.baitapnhom.ediachi;

public class Xa {
	
	private int ID;
	private String Title;
	private int STT;
	private String quanhuyenid;
	
	
	
	public Xa(int iD, String title, int sTT, String quanhuyenid) {
		super();
		ID = iD;
		Title = title;
		STT = sTT;
		this.quanhuyenid = quanhuyenid;
	}


	public Xa() {
		super();
	}


	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public int getSTT() {
		return STT;
	}
	public void setSTT(int sTT) {
		STT = sTT;
	}


	public String getQuanhuyenid() {
		return quanhuyenid;
	}


	public void setQuanhuyenid(String quanhuyenid) {
		this.quanhuyenid = quanhuyenid;
	}


	@Override
	public String toString() {
		return "Xa [ID=" + ID + ", Title=" + Title + ", STT=" + STT + "]";
	}
	
	
	
	
	
	
	

}
