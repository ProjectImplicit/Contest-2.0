
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"> <head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="expires" content="0" /> <meta http-equiv="pragma"
	content="no-cache" /> <meta http-equiv="cache-control"
	content="no-cache" /> <title>Project Implicit</title> 
<body>
	<%@ page language="java" session="true" %>
	<%@ page import='java.sql.Connection'%> 
	<%@ page import='java.sql.PreparedStatement'%> 
	<%@ page import='java.sql.ResultSet'%> 
	<%@ page import='org.uva.util.*'%> 
	<%@ page import='org.uva.dao.*'%> 
	<%@ page import='java.util.Date'%> 
	<%@ page import='java.util.ArrayList'%> 
	
	

	

	<%
		// variables for researchers to edit
	 	String firstStudyId="calvin.contest.v2.uva.set2pre.t1";
		String secondStudyId="calvin.contest.v2.uva.t2";
		String emailFile="/user/calvin/contestv2/nudgeemail_uva.txt";
		String fromAddress="UVA Psychology <clai@virginia.edu>";
		String emailTaskName="serial_uva"; //the id in the expt file
		String emailQuestionName="email";  // the question ID that has the email address
		int delay=1;   //miliseconds
		int startDaysOld=8;  //how many days back to go for sending reminder emails
		int totalDays=3;  //how many total days.  There is no way currently to send to people who finished task 1 on hte current day.  DO NOT make totaldays bigger than startDaysOld
		String password="2ENCc3ssZt5jFTk";
		// end of researcher section
		
		
	response.setDateHeader("Expires", 0);
 	response.setHeader("Cache-Control", "no-cache");
 	response.setHeader("Pragma", "no-cache");
 	String result = "";
 	
String sessionDate="";

String enteredPassword=request.getParameter("password");
if(!enteredPassword.equals(password))
{
	response.sendRedirect("/implicit");
	return;
}
 	ArrayList <String> firstSessionResponseList=new ArrayList <String>();  //results are stored here
ArrayList <String>secondSessionResponseList=new ArrayList <String>();
ArrayList <String>studySessions=new ArrayList <String>();
ArrayList <String>sentEmails=new ArrayList <String>();
Connection conn=null;

PreparedStatement ps=null;
ResultSet rs=null;
 	try {
 	  
 		 conn = ConnectionPool.getConnection("research");

 		int resultCount = 0;
ps = conn.prepareStatement("select USER_ID from yuiat_sessions_v where study_name = ? and SESSION_DATE >=trunc(sysdate-"+startDaysOld+") and session_date<trunc(sysdate-"+(startDaysOld-totalDays)+")");
 		//ps.setString(1, firstStudyId);
 		
// 			ps = conn.prepareStatement("select session_id from yuiat_sessions_v where study_name = ? and SESSION_DATE >=trunc(sysdate-"+startDaysOld+")");
 //		ps.setString(1, firstStudyId);


 			rs = ps.executeQuery();
 			while (rs.next()) {       
          result=rs.getString(1);										
      firstSessionResponseList.add(result);
      studySessions.add(rs.getString(1));	
 				}			
 			ps.close();
 			rs.close();
			//now get people who have taken the second study
			ps = conn.prepareStatement("select referrer from yuiat_sessions_v where study_name = ? ");
 		ps.setString(1, secondStudyId);
 			


 			rs = ps.executeQuery();
 			while (rs.next()) {       
          result=rs.getString(1);
      secondSessionResponseList.add(result);
 				}			
 			ps.close();
 			rs.close();
 			conn.close();
		
 	} catch (Exception e) {
 	}
	finally{
		if (rs != null) {
		        try {
		            rs.close();
		        } catch (Exception e) { /* ignored */}
		    }
		    if (ps != null) {
		        try {
		            ps.close();
		        } catch (Exception e) { /* ignored */}
		    }
		    if (conn != null) {
		        try {
		            conn.close();
		        } catch (Exception e) { /* ignored */}
		    }
	}

int numberOfEmailsSent=0;
ArrayList <String> participantEmails=new ArrayList <String>();
ArrayList <String> participantIds=new ArrayList <String>();
for(int x=0;x<secondSessionResponseList.size();x++)
{
try{
String pEmail=secondSessionResponseList.get(x);
	 pEmail=pEmail.substring(0,secondSessionResponseList.get(x).indexOf("!!!"));
	String pId=secondSessionResponseList.get(x).substring(secondSessionResponseList.get(x).indexOf("!!!")+3);
	participantEmails.add(pEmail);
	participantIds.add(pId);}
	catch(Exception e)
	{
	continue;
	}
}
String oldEmail;
	for(int x=0;x<firstSessionResponseList.size();x++)
	{

		String participantId=firstSessionResponseList.get(x);
		if(!participantIds.contains(participantId))
		{
			try {
 	  
 		 conn = ConnectionPool.getConnection("research");

		 			ps = conn.prepareStatement("select QUESTION_RESPONSE from YUIAT_QUESTIONNAIRE_DATA_V where SESSION_ID =? and QUESTIONNAIRE_NAME = ? and QUESTION_NAME=?");
 		ps.setString(1, studySessions.get(x));
 		ps.setString(2, emailTaskName);
 		ps.setString(3, emailQuestionName);
  oldEmail="";

 			rs = ps.executeQuery();
 			while (rs.next()) {       
           oldEmail=rs.getString(1);	
		   break;									
     }
 							
 			ps.close();
 			rs.close();
			if(oldEmail!=null && !oldEmail.equals("") && !oldEmail.contains("darusame@gmail.com") ){
			DelayedMail mail=new DelayedMail(delay,oldEmail, emailFile, fromAddress,firstSessionResponseList.get(x));
			new Thread(mail).start();
			numberOfEmailsSent++;
		sentEmails.add(oldEmail);
		}}
			 			catch(Exception e)
 			{}
			finally{
				if (rs != null) {
				        try {
				            rs.close();
				        } catch (Exception e) { /* ignored */}
				    }
				    if (ps != null) {
				        try {
				            ps.close();
				        } catch (Exception e) { /* ignored */}
				    }
				    if (conn != null) {
				        try {
				            conn.close();
				        } catch (Exception e) { /* ignored */}
				    }
			}

		}}
	
	
		
		//DelayedMail researcherMail=new DelayedMail(delay, fromAddress, emailFile, fromAddress,"total_emails_sent:"+numberOfEmailsSent);
		//new Thread(researcherMail).start();
 %>
 <h2 align="center">Querry Results</h2>
<p align="center">
	
	<%=firstSessionResponseList.toString()%><br/>
	<%=numberOfEmailsSent%>
	<%=sentEmails.toString()%><br/>
	
</p>
</body>
</html>