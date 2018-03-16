package com.cidic.design.model;
// Generated 2017-5-11 8:35:45 by Hibernate Tools 4.3.1.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * Review generated by hbm2java
 */
@Entity
@Table(name = "review", catalog = "design_csmtys")
public class Review implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private int productionId;
	private int userId;
	private byte score;
	private byte round;
	private Date createtime;

	public Review() {
	}

	public Review(int productionId, int userId, byte score, Date createtime) {
		this.productionId = productionId;
		this.userId = userId;
		this.score = score;
		this.createtime = createtime;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "Id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "productionId", nullable = false)
	public int getProductionId() {
		return this.productionId;
	}

	public void setProductionId(int productionId) {
		this.productionId = productionId;
	}

	@Column(name = "userId", nullable = false)
	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Column(name = "score", nullable = false)
	public byte getScore() {
		return this.score;
	}

	public void setScore(byte score) {
		this.score = score;
	}

	@Column(name = "round", nullable = false)
	public byte getRound() {
		return this.round;
	}

	public void setRound(byte round) {
		this.round = round;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH-mm-ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createtime", nullable = false, length = 19)
	public Date getCreatetime() {
		return this.createtime;
	}

	

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

}
