package demo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="boat")
public class Boat implements Serializable{
	
	@Id
	@Column(name="bid")
	private int boatId;
	@Column(name="bcap")
	private int boatCap;
	@Column(name="bname")
	private String boatName;
	
	public Boat() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Boat(int boatId, int boatCap, String boatName) {
		super();
		this.boatId = boatId;
		this.boatCap = boatCap;
		this.boatName = boatName;
	}
	public Boat(int boatId) {
		// TODO Auto-generated constructor stub
	}
	public int getBoatId() {
		return boatId;
	}
	public void setBoatId(int boatId) {
		this.boatId = boatId;
	}
	public int getBoatCap() {
		return boatCap;
	}
	public void setBoatCap(int boatCap) {
		this.boatCap = boatCap;
	}
	public String getBoatName() {
		return boatName;
	}
	public void setBoatName(String boatName) {
		this.boatName = boatName;
	}
}
