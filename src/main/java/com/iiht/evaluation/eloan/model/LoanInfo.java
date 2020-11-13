package com.iiht.evaluation.eloan.model;

public class LoanInfo {
	 private Long loanId;
	 private Long userId;
	 private String loanName;
	 private Long amtrequest;
	 private String doa;
	 private String termOfLoan;
	 private String paymentStartDate;
	 private String bstructure;
	 private String bindicator;
	 private String taxIndicator;
	 private String address;
	 private String mobile;
	 private String email;
	 private String status;
	 
	public Long getLoanId() {
		return loanId;
	}
	public void setLoanId(Long loanId) {
		this.loanId = loanId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getLoanName() {
		return loanName;
	}
	public void setLoanName(String loanName) {
		this.loanName = loanName;
	}
	public Long getAmtrequest() {
		return amtrequest;
	}
	public void setAmtrequest(Long amtrequest) {
		this.amtrequest = amtrequest;
	}
	public String getDoa() {
		return doa;
	}
	public void setDoa(String doa) {
		this.doa = doa;
	}
	public String getTermOfLoan() {
		return termOfLoan;
	}
	public void setTermOfLoan(String termOfLoan) {
		this.termOfLoan = termOfLoan;
	}
	public String getPaymentStartDate() {
		return paymentStartDate;
	}
	public void setPaymentStartDate(String paymentStartDate) {
		this.paymentStartDate = paymentStartDate;
	}
	public String getBstructure() {
		return bstructure;
	}
	public void setBstructure(String bstructure) {
		this.bstructure = bstructure;
	}
	public String getBindicator() {
		return bindicator;
	}
	public void setBindicator(String bindicator) {
		this.bindicator = bindicator;
	}
	public String getTaxIndicator() {
		return taxIndicator;
	}
	public void setTaxIndicator(String taxIndicator) {
		this.taxIndicator = taxIndicator;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public LoanInfo() {
		super();
		this.loanId = loanId;
		this.userId = userId;
		this.loanName = loanName;
		this.amtrequest = amtrequest;
		this.doa = doa;
		this.termOfLoan = termOfLoan;
		this.paymentStartDate = paymentStartDate;
		this.bstructure = bstructure;
		this.bindicator = bindicator;
		this.taxIndicator = taxIndicator;
		this.address = address;
		this.mobile = mobile;
		this.email = email;
		this.status = status;
	}
	@Override
	public String toString() {
		return "LoanInfo [loanId=" + loanId + ", userId=" + userId + ", loanName=" + loanName + ", amtrequest="
				+ amtrequest + ", doa=" + doa + ", termOfLoan=" + termOfLoan + ", paymentStartDate=" + paymentStartDate
				+ ", bstructure=" + bstructure + ", bindicator=" + bindicator + ", taxIndicator=" + taxIndicator
				+ ", address=" + address + ", mobile=" + mobile + ", email=" + email + ", status=" + status + "]";
	}
	 
	 
	}
