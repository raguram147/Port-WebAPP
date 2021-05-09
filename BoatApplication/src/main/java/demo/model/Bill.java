package demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bill")
public class Bill {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="billid", nullable = false)
	private int billId;
	@Column(name="amount")
	private double amount;
	@Column(name="loadcap")
	private int loadCap;
	@Column(name="time")
	private int time;
	
	public Bill() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Bill(double amount, int loadCap, int time) {
		super();
		this.amount = amount;
		this.loadCap = loadCap;
		this.time = time;
	}

	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public int getLoadCap() {
		return loadCap;
	}

	public void setLoadCap(int loadCap) {
		this.loadCap = loadCap;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}
}
