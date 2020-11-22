package model;

public class Asiakas {
	private String etunimi, sukunimi, puhelin, sposti;
	private int asiakasid;
	
	public Asiakas(String etunimi, String sukunimi, String puhelin, String sposti, int asiakasid) {
		super();
		this.etunimi = etunimi;
		this.sukunimi = sukunimi;
		this.puhelin = puhelin;
		this.sposti = sposti;
		this.asiakasid = asiakasid;
	}

	public Asiakas() {
		super();
	}

	public String getEtunimi() {
		return etunimi;
	}

	public void setEtunimi(String etunimi) {
		this.etunimi = etunimi;
	}

	public String getSukunimi() {
		return sukunimi;
	}

	public void setSukunimi(String sukunimi) {
		this.sukunimi = sukunimi;
	}

	public String getPuhelin() {
		return puhelin;
	}

	public void setPuhelin(String puhelin) {
		this.puhelin = puhelin;
	}

	public String getSposti() {
		return sposti;
	}

	public void setSposti(String sposti) {
		this.sposti = sposti;
	}

	public int getAsiakasid() {
		return asiakasid;
	}

	public void setAsiakasid(int asiakasid) {
		this.asiakasid = asiakasid;
	}

	@Override
	public String toString() {
		return "Asiakas [etunimi=" + etunimi + ", sukunimi=" + sukunimi + ", puhelin=" + puhelin + ", sposti=" + sposti
				+ ", asiakasid=" + asiakasid + "]";
	}
	
	
}
