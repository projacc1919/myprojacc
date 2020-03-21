package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="salordtab")
public class SaleOrder {
	
	@Id
	@GeneratedValue
	@Column(name="soid")
	private Integer soid;

	@Column(name="code")
	private String orderCode;
	
	@ManyToOne
	@JoinColumn(name="shipIdFk")
	private ShipmentType shipOb;
	
	@ManyToOne
	@JoinColumn(name="whIdFk")
	private WhUserType customer;
	
	@Column(name="refno")
	private String refNum;
	
	@Column(name="mode")
	private String stockMode;
	
	@Column(name="source")
	private String stockSource;
	
	@Column(name="status")
	private String status;
	
	@Column(name="note")
	private String description;

	public SaleOrder() {
		super();
	}

	public SaleOrder(Integer soid) {
		super();
		this.soid = soid;
	}

	public Integer getSoid() {
		return soid;
	}

	public void setSoid(Integer soid) {
		this.soid = soid;
	}

	public String getOrderCode() {
		return orderCode;
	}

	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}

	public ShipmentType getShipOb() {
		return shipOb;
	}

	public void setShipOb(ShipmentType shipOb) {
		this.shipOb = shipOb;
	}

	public WhUserType getCustomer() {
		return customer;
	}

	public void setCustomer(WhUserType customer) {
		this.customer = customer;
	}

	public String getRefNum() {
		return refNum;
	}

	public void setRefNum(String refNum) {
		this.refNum = refNum;
	}

	public String getStockMode() {
		return stockMode;
	}

	public void setStockMode(String stockMode) {
		this.stockMode = stockMode;
	}

	public String getStockSource() {
		return stockSource;
	}

	public void setStockSource(String stockSource) {
		this.stockSource = stockSource;
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

	@Override
	public String toString() {
		return "SaleOrder [soid=" + soid + ", orderCode=" + orderCode + ", shipOb=" + shipOb + ", customer=" + customer
				+ ", refNum=" + refNum + ", stockMode=" + stockMode + ", stockSource=" + stockSource + ", status="
				+ status + ", description=" + description + "]";
	}

	
}
