package com.iiht.evaluation.eloan.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iiht.evaluation.eloan.dao.ConnectionDao;
import com.mysql.cj.util.StringUtils;




@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
private ConnectionDao connDao;
	
	public void setConnDao(ConnectionDao connDao) {
		this.connDao = connDao;
	}
	public void init(ServletConfig config) {
		String jdbcURL = config.getServletContext().getInitParameter("jdbcUrl");
		String jdbcUsername = config.getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = config.getServletContext().getInitParameter("jdbcPassword");
		System.out.println(jdbcURL + jdbcUsername + jdbcPassword);
		this.connDao = new ConnectionDao(jdbcURL, jdbcUsername, jdbcPassword);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		
		String viewName = "";
		try {
			switch (action) {
			case "registernewuser":
				viewName=registernewuser(request,response);
				break;
			case "validate":
				viewName=validate(request,response);
				break;
			case "placeloan":
				viewName=placeloan(request,response);
				break;
			case "application1":
				viewName=application1(request,response);
				break;
			case "editLoanProcess"  :
				viewName=editLoanProcess(request,response);
				break;
			case "registeruser":
				viewName=registerUser(request,response);
				break;
			case "register":
				viewName = register(request, response);
				break;
			case "application":
				viewName = application(request, response);
				break;
			case "trackloan":
				viewName = trackloan(request, response);
				break;
			case "editloan":
				viewName = editloan(request, response);
				break;	
			case  "displaystatus" :
				viewName=displaystatus(request,response);
				break;
			default : viewName = "notfound.jsp"; break;	
			}
		} catch (Exception ex) {
			
			throw new ServletException(ex.getMessage());
		}
			RequestDispatcher dispatch = 
					request.getRequestDispatcher(viewName);
			dispatch.forward(request, response);
	}
	private String validate(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		/* write the code to validate the user */
		
		String viewPage = "index.jsp";
		Connection connection = null;
		
		try {
			
			String dbURL="jdbc:mysql://localhost:3306/ebank";
			String dbUserName="srivalli";
			String dbPassword="1234";
			connection = new ConnectionDao(dbURL,dbUserName,dbPassword).connect();
			
			String userName=request.getParameter("username");
			String password=request.getParameter("password");
			request.getSession(true).setAttribute("userName",userName);
			
			String validatUserQuery = "select * from User where username='"+userName+"' and password ='"+password+"'";
			
			System.out.println(validatUserQuery);
			
		    PreparedStatement pst = connection.prepareStatement(validatUserQuery);	
		    ResultSet rs= pst.executeQuery();
			
			  if(rs.next()) { 
				  viewPage=userName.equalsIgnoreCase("admin") ? "adminhome1.jsp":"userhome.jsp";
			  }
			  else { viewPage =
			  "index.jsp?message=Invalid username or password"; 
			  }
			 
			}

		catch(Exception e) {
			e.printStackTrace();
		}
		finally{
			
			try {
				if(connection != null) {
					connection.close();
				}
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}
		
		return viewPage;

	}
	private String placeloan(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	/* write the code to place the loan information */
		
		String viewPage = "index.jsp";
		Connection connection = null;
		java.sql.Statement stmt = null;
		
		try {
			
			String dbURL="jdbc:mysql://localhost:3306/ebank";
			String dbUserName="srivalli";
			String dbPassword="1234";
			connection = new ConnectionDao(dbURL,dbUserName,dbPassword).connect();
			
			String userName=(String)request.getSession(true).getAttribute("userName");
			String loanName=request.getParameter("LoanName");
			int loanApplNum= (int)request.getSession(true).getAttribute("applNum");
			String loanAmontRequested=request.getParameter("LoanAmountRequested");
			String applicationDate= (String) request.getSession(true).getAttribute("applDate");
			String termOfLoan=request.getParameter("termOfLoan");
			String payStartDate=request.getParameter("paymentStartDate");
			String businessStructure=request.getParameter("Businessstruture");
			int billingIndicator= !StringUtils.isNullOrEmpty(request.getParameter("BillingIndicator")) ? 1:0;
			int taxIndicator=!StringUtils.isNullOrEmpty(request.getParameter("TaxIndicator")) ? 1:0;
			String userAddress=request.getParameter("applicationAddress");
			String mobile=request.getParameter("mobile");
			String email=request.getParameter("email");
						
			Long userId = getUserId(userName);
			
			String sqlquery = "insert into loan_info (userId, loan_name, loan_application_num, loan_amount_requested, "
					+ "loan_application_date, term_of_loan, payment_start_date, business_structure, billing_indicator,"
					+ " tax_indicator, address, mobile, email,status) values('"+userId+"','"+loanName+"','"+loanApplNum+"','"+loanAmontRequested
					+ "','"+applicationDate+"','"+termOfLoan+"','"+payStartDate+"','"+businessStructure+"','"+billingIndicator+"','"+taxIndicator
					+"','"+userAddress+"','"+mobile+"','"+email+"','Pending Approval')";
		     		System.out.println(sqlquery);

		      System.out.println("Inserting records into the table...");
		      stmt = connection.createStatement();
		      int i = stmt.executeUpdate(sqlquery);
			  if(i > 0) { 
				  viewPage="userhome.jsp?loanAppliedMessage= Your Loan Application Submitted successfully! "+
			           "Keep Application number "+loanApplNum+ " for tracking.";
			  }
			  else { viewPage =
			  "application.jsp?message=Loan Application not Submitted"; 
			  }
			  stmt.close();	
			  connection.close();
			}

		catch(Exception e) {
			e.printStackTrace();
		}
		finally{
			
			try {
				if(stmt != null) {
					stmt.close();
				}
				if(connection != null) {
					connection.close();
				}
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}
		
		return viewPage;

	}
	private String application1(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	/* write the code to display the loan application page */
		return "application.jsp";
	}
	private String editLoanProcess(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		// TODO Auto-generated method stub
		/* write the code to edit the loan info */
		
		return "editloan.jsp";
	}
	private String registerUser(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		// TODO Auto-generated method stub
		/* write the code to redirect page to read the user details */
		return "newuserui.jsp";
	}
	private String registernewuser(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		// TODO Auto-generated method stub
		/* write the code to create the new user account read from user 
		   and return to index page */
		
		String viewPage = "index.jsp";
		Connection connection = null;
		java.sql.Statement stmt = null;
		
		try {
			
			String dbURL="jdbc:mysql://localhost:3306/ebank";
			String dbUserName="srivalli";
			String dbPassword="1234";
			connection = new ConnectionDao(dbURL,dbUserName,dbPassword).connect();
			
			String userName=request.getParameter("UserName");
			String password=request.getParameter("Password");
			
			Long userId = getUserId(userName);
			if(userId != null) {
		    	viewPage = "register.jsp?message= User Name already exists ! Please provide different User Name"; 
			}else {
   			    String sqlquery = "insert into user (userName,password) values('"+userName+"','"+password+"')";
		        System.out.println(sqlquery);
		        System.out.println("Inserting records into the table...");
		        stmt = connection.createStatement();
		      
		        int i = stmt.executeUpdate(sqlquery);
			
			    if(i > 0) { 
				  viewPage="index.jsp?acctCreationMessage= Your account created successfully ! try Login now";
			    } else { 
			    	viewPage = "register.jsp?message= Account not registered"; 
			    }
			    stmt.close();	
			    connection.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(stmt != null) {
					stmt.close();
				}
				if(connection != null) {
					connection.close();
				}
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}
		return viewPage;
	}
	
	private String register(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		/* write the code to redirect to register page */
		
		return null;
	}
	private String displaystatus(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		// TODO Auto-generated method stub
		/* write the code the display the loan status based on the given application
		   number 
		*/
		
		return null;
	}

	private String editloan(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	/* write a code to return to editloan page */
		return null;
	}

	private String trackloan(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	/* write a code to return to trackloan page */
		
		return null;
	}

	private String application(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
	/* write a code to return to trackloan page */
		int int_random = new Random().nextInt(999999); 
		String applDate = new SimpleDateFormat("MM/dd/yy").format(new Date());
	    request.getSession(true).setAttribute("applNum",int_random);
	    request.getSession(true).setAttribute("applDate",applDate);
		return "application.jsp?applicationNum="+int_random;
	}
	
	private Long getUserId (String userName) throws SQLException {
		/* write the code to validate the user */
		
		Long userId = null;
		Connection connection = null;
		
		try {
			
			String dbURL="jdbc:mysql://localhost:3306/ebank";
			String dbUserName="srivalli";
			String dbPassword="1234";
			connection = new ConnectionDao(dbURL,dbUserName,dbPassword).connect();
			
			String validatUserQuery = "select user_id from User where username='"+userName+"'";
			System.out.println(validatUserQuery);
			
		    PreparedStatement pst = connection.prepareStatement(validatUserQuery);	
		    ResultSet rs= pst.executeQuery();
			if(rs != null && rs.next()) { 
			  userId = (Long)rs.getObject(1);
			}
			pst.close();
			connection.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally{
			try {
				if(connection != null) {
					connection.close();
				}
			}catch(SQLException se) {
				se.printStackTrace();
			}
		}
		return userId;
	}

}