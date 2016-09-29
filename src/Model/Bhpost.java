package Model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the BHPOST database table.
 * 
 */
@Entity
@NamedQuery(name="Bhpost.findAll", query="SELECT b FROM Bhpost b")
public class Bhpost implements Serializable {
	private static final long serialVersionUID = 1L;

	@Temporal(TemporalType.DATE)
	private Date postdate;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long postid;

	private String posttext;

	//bi-directional many-to-one association to Bhuser
	@ManyToOne
	@JoinColumn(name="BHUSERID")
	private Bhuser bhuser;

	public Bhpost() {
	}

	public Date getPostdate() {
		return this.postdate;
	}

	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	}

	public long getPostid() {
		return this.postid;
	}

	public void setPostid(long postid) {
		this.postid = postid;
	}

	public String getPosttext() {
		return this.posttext;
	}

	public void setPosttext(String posttext) {
		this.posttext = posttext;
	}

	public Bhuser getBhuser() {
		return this.bhuser;
	}

	public void setBhuser(Bhuser bhuser) {
		this.bhuser = bhuser;
	}

}