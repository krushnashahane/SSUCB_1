/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ssucb.pojo;

/**
 *
 * @author Naresh
 */
public class LoanProposalAmountPojo {
    private int lpid;
    private String loanproposalamount;
    private String processfee;
    private String reviewofcc;

    public int getLpid() {
        return lpid;
    }

    public void setLpid(int lpid) {
        this.lpid = lpid;
    }

    public String getLoanproposalamount() {
        return loanproposalamount;
    }

    public void setLoanproposalamount(String loanproposalamount) {
        this.loanproposalamount = loanproposalamount;
    }

    public String getProcessfee() {
        return processfee;
    }

    public void setProcessfee(String processfee) {
        this.processfee = processfee;
    }

    public String getReviewofcc() {
        return reviewofcc;
    }

    public void setReviewofcc(String reviewofcc) {
        this.reviewofcc = reviewofcc;
    }
}
