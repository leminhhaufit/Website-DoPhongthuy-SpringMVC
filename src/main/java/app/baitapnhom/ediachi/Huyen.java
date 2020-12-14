package app.baitapnhom.ediachi;

public class Huyen {
	private int Type;
	private String SolrID;
	private int ID;
	private String Title;
	private int STT;
	private int TinhThanhID;
	private String TinhThanhTitle;
	private String TinhThanhTitleAscii;
	private String Created;
	private String Updated;
	public Huyen(int type, String solrID, int iD, String title, int sTT, int tinhThanhID, String tinhThanhTitle,
			String tinhThanhTitleAscii, String created, String updated) {
		super();
		Type = type;
		SolrID = solrID;
		ID = iD;
		Title = title;
		STT = sTT;
		TinhThanhID = tinhThanhID;
		TinhThanhTitle = tinhThanhTitle;
		TinhThanhTitleAscii = tinhThanhTitleAscii;
		Created = created;
		Updated = updated;
	}
	
	
	public Huyen() {
		super();
	}


	public int getType() {
		return Type;
	}
	public void setType(int type) {
		Type = type;
	}
	public String getSolrID() {
		return SolrID;
	}
	public void setSolrID(String solrID) {
		SolrID = solrID;
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
	public int getTinhThanhID() {
		return TinhThanhID;
	}
	public void setTinhThanhID(int tinhThanhID) {
		TinhThanhID = tinhThanhID;
	}
	public String getTinhThanhTitle() {
		return TinhThanhTitle;
	}
	public void setTinhThanhTitle(String tinhThanhTitle) {
		TinhThanhTitle = tinhThanhTitle;
	}
	public String getTinhThanhTitleAscii() {
		return TinhThanhTitleAscii;
	}
	public void setTinhThanhTitleAscii(String tinhThanhTitleAscii) {
		TinhThanhTitleAscii = tinhThanhTitleAscii;
	}
	public String getCreated() {
		return Created;
	}
	public void setCreated(String created) {
		Created = created;
	}
	public String getUpdated() {
		return Updated;
	}
	public void setUpdated(String updated) {
		Updated = updated;
	}
	@Override
	public String toString() {
		return "Huyen [Type=" + Type + ", SolrID=" + SolrID + ", ID=" + ID + ", Title=" + Title + ", STT=" + STT
				+ ", TinhThanhID=" + TinhThanhID + ", TinhThanhTitle=" + TinhThanhTitle + ", TinhThanhTitleAscii="
				+ TinhThanhTitleAscii + ", Created=" + Created + ", Updated=" + Updated + "]";
	}
	
	

}
