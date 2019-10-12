package com.olonsoft.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="it_projects")
public class Project {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)	
	@Column(name = "project_id")
	private long project_id;

	@Column(name = "project_name")
	private String project_name;

	@Column(name = "start_date")
	private Date start_date;

	@Column(name = "target_end_date")
	private Date target_end_date;

	@Column(name = "actual_end_date")
	private Date actual_end_date;

	@Column(name = "created_on")
	private Date created_on;

	@Column(name = "created_by")
	private String created_by;

	@Column(name = "modified_on")
	private String modified_on;

	@Column(name = "modified_by")
	private String modified_by;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "issue_id", nullable = true)
	private List<Issue> issues;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "userId", nullable = true)
	private List<UserInfo> userInfos;

	public long getProject_id() {
		return project_id;
	}

	public void setProject_id(long project_id) {
		this.project_id = project_id;
	}

	public String getProject_name() {
		return project_name;
	}

	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getTarget_end_date() {
		return target_end_date;
	}

	public void setTarget_end_date(Date target_end_date) {
		this.target_end_date = target_end_date;
	}

	public Date getActual_end_date() {
		return actual_end_date;
	}

	public void setActual_end_date(Date actual_end_date) {
		this.actual_end_date = actual_end_date;
	}

	public Date getCreated_on() {
		return created_on;
	}

	public void setCreated_on(Date created_on) {
		this.created_on = created_on;
	}

	public String getCreated_by() {
		return created_by;
	}

	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}

	public String getModified_on() {
		return modified_on;
	}

	public void setModified_on(String modified_on) {
		this.modified_on = modified_on;
	}

	public String getModified_by() {
		return modified_by;
	}

	public void setModified_by(String modified_by) {
		this.modified_by = modified_by;
	}

	public List<Issue> getIssues() {
		return issues;
	}

	public void setIssues(List<Issue> issues) {
		this.issues = issues;
	}

	public List<UserInfo> getUserInfos() {
		return userInfos;
	}

	public void setUserInfos(List<UserInfo> userInfos) {
		this.userInfos = userInfos;
	}

	@Override
	public String toString() {
		return "Project [actual_end_date=" + actual_end_date + ", created_by=" + created_by + ", created_on="
				+ created_on + ", issues=" + issues + ", modified_by=" + modified_by + ", modified_on=" + modified_on
				+ ", project_id=" + project_id + ", project_name=" + project_name + ", start_date=" + start_date
				+ ", target_end_date=" + target_end_date + ", userInfos=" + userInfos + "]";
	}
	
	
	
	
}
