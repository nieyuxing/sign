package com.yc.vote.entity;

public class Subject {
	private int vsId;
	private String vsTitle;
	private int vsType;
	private String voteCount;
	private String optionCount;
	public String getVoteCount() {
		return voteCount;
	}
	public void setVoteCount(String voteCount) {
		this.voteCount = voteCount;
	}
	public String getOptionCount() {
		return optionCount;
	}
	public void setOptionCount(String optionCount) {
		this.optionCount = optionCount;
	}
	public Subject() {
	}
	public Subject(int vsId, String vsTitle, int vsType) {
		this.vsId = vsId;
		this.vsTitle = vsTitle;
		this.vsType = vsType;
	}
	public int getVsId() {
		return vsId;
	}
	public void setVsId(int vsId) {
		this.vsId = vsId;
	}
	public String getVsTitle() {
		return vsTitle;
	}
	public void setVsTitle(String vsTitle) {
		this.vsTitle = vsTitle;
	}
	public int getVsType() {
		return vsType;
	}
	public void setVsType(int vsType) {
		this.vsType = vsType;
	}
	@Override
	public String toString() {
		return "Subject [vsId=" + vsId + ", vsTitle=" + vsTitle + ", vsType="
				+ vsType + ", voteCount=" + voteCount + ", optionCount="
				+ optionCount + "]";
	}
}
