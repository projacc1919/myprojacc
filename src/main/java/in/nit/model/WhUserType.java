package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="whusertype")
public class WhUserType {
	
	@Id
	@GeneratedValue
	@Column(name="wid")
	private Integer whId;
	
	@Column(name="utype")
	private String userType;
	
	@Column(name="ucode")
	private String userCode;
	
	@Column(name="ufor")
	private String userFor;
	
	@Column(name="uemail")
	private String userEmail;
	
	@Column(name="ucon")
	private String userContact;
	
	@Column(name="uitype")
	private String userIdType;
	
	@Column(name="ioth")
	private String ifOther;
	
	@Column(name="inum")
	private String idNum;

	public WhUserType() {
		super();
	}

	public Integer getWhId() {
		return whId;
	}

	public void setWhId(Integer whId) {
		this.whId = whId;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserFor() {
		return userFor;
	}

	public void setUserFor(String userFor) {
		this.userFor = userFor;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserContact() {
		return userContact;
	}

	public void setUserContact(String userContact) {
		this.userContact = userContact;
	}

	public String getUserIdType() {
		return userIdType;
	}

	public void setUserIdType(String userIdType) {
		this.userIdType = userIdType;
	}

	public String getIfOther() {
		return ifOther;
	}

	public void setIfOther(String ifOther) {
		this.ifOther = ifOther;
	}

	public String getIdNum() {
		return idNum;
	}

	public void setIdNum(String idNum) {
		this.idNum = idNum;
	}

	@Override
	public String toString() {
		return "WhUserType [whId=" + whId + ", userType=" + userType + ", userCode=" + userCode + ", userFor=" + userFor
				+ ", userEmail=" + userEmail + ", userContact=" + userContact + ", userIdType=" + userIdType
				+ ", ifOther=" + ifOther + ", idNum=" + idNum + "]";
	}
	
	
}
