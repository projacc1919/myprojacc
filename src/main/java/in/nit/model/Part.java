package in.nit.model;

import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OrderColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="parttab")
public class Part {
	
	@Id
	@GeneratedValue
	@GenericGenerator(name="pidgen",strategy = "increment")
	@Column(name="pid")
	private Integer partId;
	
	@Column(name="pcode")
	private String partCode;
	
	@ElementCollection(fetch=FetchType.EAGER)
	@CollectionTable(name="dimtab", joinColumns = @JoinColumn(name="pid"))
	@OrderColumn(name="pos")
	@Column(name="pdim")
	private List<String> partDim;

	@Column(name="pbcost")
	private Double baseCost;

	@Column(name="pbcrr")
	private String baseCurr;
	
	@Column(name="pdesc")
	private String partDesc;

	public Part() {
		super();
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

	public List<String> getPartDim() {
		return partDim;
	}

	public void setPartDim(List<String> partDim) {
		this.partDim = partDim;
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

	@Override
	public String toString() {
		return "Part [partId=" + partId + ", partCode=" + partCode + ", partDim=" + partDim + ", baseCost=" + baseCost
				+ ", baseCurr=" + baseCurr + ", partDesc=" + partDesc + "]";
	}
	
	
}
