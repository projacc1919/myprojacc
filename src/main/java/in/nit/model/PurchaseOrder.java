package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="purordtab")
public class PurchaseOrder {

	@Id
	@GeneratedValue
	@Column(name="poid")
	private Integer poid;
	
	@Column(name="pocode")
	private String purchaseOrderCode;
	
	@Column(name="porefno")
	private String refNum;
	
	@Column(name="poqcheck")
	private String qualityCheck;
	
	@Column(name="postatus")
	private String status;
	
	@Column(name="podesc")
	private String description;
	
	@ManyToOne
	@JoinColumn(name="shipIdFk")
	private ShipmentType shipOb;
	
	
	@ManyToOne
	@JoinColumn(name="whIdFk")
	private WhUserType vendor;

	public PurchaseOrder() {
		super();
	}

	public PurchaseOrder(Integer poid) {
		super();
		this.poid = poid;
	}

	public Integer getPoid() {
		return poid;
	}

	public void setPoid(Integer poid) {
		this.poid = poid;
	}
	
	public String getPurchaseOrderCode() {
		return purchaseOrderCode;
	}

	public void setPurchaseOrderCode(String purchaseOrderCode) {
		this.purchaseOrderCode = purchaseOrderCode;
	}

	public String getRefNum() {
		return refNum;
	}

	public void setRefNum(String refNum) {
		this.refNum = refNum;
	}

	public String getQualityCheck() {
		return qualityCheck;
	}

	public void setQualityCheck(String qualityCheck) {
		this.qualityCheck = qualityCheck;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ShipmentType getShipOb() {
		return shipOb;
	}

	public void setShipOb(ShipmentType shipOb) {
		this.shipOb = shipOb;
	}

	public WhUserType getVendor() {
		return vendor;
	}

	public void setVendor(WhUserType vendor) {
		this.vendor = vendor;
	}

	@Override
	public String toString() {
		return "PurchaseOrder [poid=" + poid + ", purchaseOrderCode=" + purchaseOrderCode + ", refNum=" + refNum
				+ ", qualityCheck=" + qualityCheck + ", status=" + status + ", description=" + description
				+ ", shipOb=" + shipOb + ", vendor=" + vendor + "]";
	}


}
