package bean;
// Generated 2017-5-27 17:44:09 by Hibernate Tools 3.5.0.Final

/**
 * School generated by hbm2java
 */
public class School implements java.io.Serializable {

	private String universityNo;
	private String universityName;
	private char universityType;

	public School() {
	}

	public School(String universityNo, String universityName, char universityType) {
		this.universityNo = universityNo;
		this.universityName = universityName;
		this.universityType = universityType;
	}

	public String getUniversityNo() {
		return this.universityNo;
	}

	public void setUniversityNo(String universityNo) {
		this.universityNo = universityNo;
	}

	public String getUniversityName() {
		return this.universityName;
	}

	public void setUniversityName(String universityName) {
		this.universityName = universityName;
	}

	public char getUniversityType() {
		return this.universityType;
	}

	public void setUniversityType(char universityType) {
		this.universityType = universityType;
	}

}
