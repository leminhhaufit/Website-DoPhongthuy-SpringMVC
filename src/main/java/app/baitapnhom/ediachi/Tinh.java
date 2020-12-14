package app.baitapnhom.ediachi;

public class Tinh {
	private int Type;
	private String SolrID;
	private int ID;
	private String Title;
	private int STT;
	private String Created;
	private String Updated;
	private int TotalDoanhNghiep;
	public Tinh(int type, String solrID, int iD, String title, int sTT, String created, String updated,
			int totalDoanhNghiep) {
		super();
		Type = type;
		SolrID = solrID;
		ID = iD;
		Title = title;
		STT = sTT;
		Created = created;
		Updated = updated;
		TotalDoanhNghiep = totalDoanhNghiep;
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
	public int getTotalDoanhNghiep() {
		return TotalDoanhNghiep;
	}
	public void setTotalDoanhNghiep(int totalDoanhNghiep) {
		TotalDoanhNghiep = totalDoanhNghiep;
	}
	@Override
	public String toString() {
		return "Tinh [Type=" + Type + ", SolrID=" + SolrID + ", ID=" + ID + ", Title=" + Title + ", STT=" + STT
				+ ", Created=" + Created + ", Updated=" + Updated + ", TotalDoanhNghiep=" + TotalDoanhNghiep + "]";
	}
	
	
	
	

}
