package com.olonsoft.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="it_issues")
public class Issue {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="issue_id", nullable=false, unique=true)
	private long issue_id;  
	
	@Column(name="issue_summary")
	private String issue_summary;
	
	@Column(name="issue_description")
	private String issue_description;
	@ManyToOne
	@JoinColumn(name="identified_by_person_id")
	private UserInfo identified_by_person_id;
	
	@Column(name="identified_date")
	private Date identified_date;
	
	@ManyToOne
	@JoinColumn(name="related_project_id")
	private Project related_project_id;
	
	@ManyToOne
	@JoinColumn(name="assigned_user")
	private UserInfo assigned_user;
	
	@Column(name="status")
	private String status;
	
	@Column(name="priority")
	private String priority;
	
	@Column(name="target_resolution_date")
	private Date target_resolution_date;
	
	@Column(name="progress")
	private String progress;
	
	@Column(name="actual_resolution_date")
	private Date actual_resolution_date;
	
	@Column(name="resolution_summary")
	private String resolution_summary;
	
	@Column(name="created_on")
	private Date created_on;
	
	@Column(name="created_by")
	private String created_by;
	
	@Column(name="modified_on")
	private Date modified_on;
	
	@Column(name="modified_by")
	private String modified_by;

	public long getIssue_id() {
		return issue_id;
	}

	public void setIssue_id(long issue_id) {
		this.issue_id = issue_id;
	}

	public String getIssue_summary() {
		return issue_summary;
	}

	public void setIssue_summary(String issue_summary) {
		this.issue_summary = issue_summary;
	}

	public String getIssue_description() {
		return issue_description;
	}

	public void setIssue_description(String issue_description) {
		this.issue_description = issue_description;
	}

	public UserInfo getIdentified_by_person_id() {
		return identified_by_person_id;
	}

	public void setIdentified_by_person_id(UserInfo identified_by_person_id) {
		this.identified_by_person_id = identified_by_person_id;
	}

	public Date getIdentified_date() {
		return identified_date;
	}

	public void setIdentified_date(Date identified_date) {
		this.identified_date = identified_date;
	}

	public Project getRelated_project_id() {
		return related_project_id;
	}

	public void setRelated_project_id(Project related_project_id) {
		this.related_project_id = related_project_id;
	}

	public UserInfo getAssigned_user() {
		return assigned_user;
	}

	public void setAssigned_user(UserInfo assigned_user) {
		this.assigned_user = assigned_user;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public Date getTarget_resolution_date() {
		return target_resolution_date;
	}

	public void setTarget_resolution_date(Date target_resolution_date) {
		this.target_resolution_date = target_resolution_date;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}

	public Date getActual_resolution_date() {
		return actual_resolution_date;
	}

	public void setActual_resolution_date(Date actual_resolution_date) {
		this.actual_resolution_date = actual_resolution_date;
	}

	public String getResolution_summary() {
		return resolution_summary;
	}

	public void setResolution_summary(String resolution_summary) {
		this.resolution_summary = resolution_summary;
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

	public Date getModified_on() {
		return modified_on;
	}

	public void setModified_on(Date modified_on) {
		this.modified_on = modified_on;
	}

	public String getModified_by() {
		return modified_by;
	}

	public void setModified_by(String modified_by) {
		this.modified_by = modified_by;
	}

	@Override
	public String toString() {
		return "Issue [actual_resolution_date=" + actual_resolution_date + ", assigned_user=" + assigned_user
				+ ", created_by=" + created_by + ", created_on=" + created_on + ", identified_by_person_id="
				+ identified_by_person_id + ", identified_date=" + identified_date + ", issue_description="
				+ issue_description + ", issue_id=" + issue_id + ", issue_summary=" + issue_summary + ", modified_by="
				+ modified_by + ", modified_on=" + modified_on + ", priority=" + priority + ", progress=" + progress
				+ ", related_project_id=" + related_project_id + ", resolution_summary=" + resolution_summary
				+ ", status=" + status + ", target_resolution_date=" + target_resolution_date + "]";
	}

	
	
	
}
