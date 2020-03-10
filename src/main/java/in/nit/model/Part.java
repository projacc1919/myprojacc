package in.nit.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author Sumit
 *
 */
@Entity
@Table(name="parttab")
public final class Part {
	
	@Id
	@GeneratedValue
	@Column(name="pid")
	private Integer partId;
	
	@Column(name="pcode")
	private String partCode;
	
	@Column(name="plen")
	private Double partLen;
	
	@Column(name="pwid")
	private Double partWid;
	
	@Column(name="phgt")
	private Double partHgt;
	
	@Column(name="pbcost")
	private Double baseCost;

	@Column(name="pbcrr")
	private String baseCurr;
	
	@Column(name="pdesc")
	private String partDesc;
	
	@ManyToOne
	@JoinColumn(name="uomIdFk")
	private Uom uomOb;
	
	@ManyToOne
	@JoinColumn(name="orderSaleIdFk")
	private OrderMethod omSaleOb;

	@ManyToOne
	@JoinColumn(name="omPurchaseIdFk")
	private OrderMethod omPurchaseOb;
	
	public Part() {
		super();
	}

	public Part(Integer partId) {
		super();
		this.partId = partId;
	}

	public Integer getPartId() {
		return partId;
	}

	public void setPartId(Integer partId) {
		this.partId = partId;
	}

	public String getPartCode() {
		return partCode;
	}

	public void setPartCode(String partCode) {
		this.partCode = partCode;
	}

	public Double getPartLen() {
		return partLen;
	}

	public void setPartLen(Double partLen) {
		this.partLen = partLen;
	}

	public Double getPartWid() {
		return partWid;
	}

	public void setPartWid(Double partWid) {
		this.partWid = partWid;
	}

	public Double getPartHgt() {
		return partHgt;
	}

	public void setPartHgt(Double partHgt) {
		this.partHgt = partHgt;
	}

	public Double getBaseCost() {
		return baseCost;
	}

	public void setBaseCost(Double baseCost) {
		this.baseCost = baseCost;
	}

	public String getBaseCurr() {
		return baseCurr;
	}

	public void setBaseCurr(String baseCurr) {
		this.baseCurr = baseCurr;
	}

	public String getPartDesc() {
		return partDesc;
	}

	public void setPartDesc(String partDesc) {
		this.partDesc = partDesc;
	}

	public Uom getUomOb() {
		return uomOb;
	}

	public void setUomOb(Uom uomOb) {
		this.uomOb = uomOb;
	}

	public OrderMethod getOmSaleOb() {
		return omSaleOb;
	}

	public void setOmSaleOb(OrderMethod omSaleOb) {
		this.omSaleOb = omSaleOb;
	}

	public OrderMethod getOmPurchaseOb() {
		return omPurchaseOb;
	}

	public void setOmPurchaseOb(OrderMethod omPurchaseOb) {
		this.omPurchaseOb = omPurchaseOb;
	}

	@Override
	public String toString() {
		return "Part [partId=" + partId + ", partCode=" + partCode + ", partLen=" + partLen + ", partWid=" + partWid
				+ ", partHgt=" + partHgt + ", baseCost=" + baseCost + ", baseCurr=" + baseCurr + ", partDesc="
				+ partDesc + ", uomOb=" + uomOb + ", omSaleOb=" + omSaleOb + ", omPurchaseOb=" + omPurchaseOb + "]";
	}


}
