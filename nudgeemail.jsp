
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
	<%@ page import='java.util.ArrayList,java.lang.*,java.util.*, javax.mail.*, java.io.*, javax.mail.internet.*,org.uva.*'%> 
	
	

	

	<%

		
			
	    class SendEmail implements Runnable {
		String fromEmail;
		String toEmail1;
		String subject;
		String bodyFile;
		 int delay;
		 
		 String readFile( String file ) throws Exception {
		    BufferedReader reader = new BufferedReader( new FileReader (file));
		    String         line = null;
		    StringBuilder  stringBuilder = new StringBuilder();
		    String         ls = System.getProperty("line.separator");

		    while( ( line = reader.readLine() ) != null ) {
		        stringBuilder.append( line );
		        stringBuilder.append( ls );
		    }

		    return stringBuilder.toString();
		}
		 
		 SendEmail(String from,String to, String subject, String body, int delay)
		 {
			 fromEmail=from;
			 toEmail1=to;
			 this.subject=subject;
			 bodyFile=body;
			 this.delay=delay;
			
		 }
	      public void run() {
	       String status = "true";
	  	 String mailServer = "localhost";
	  	 String emailTaskId="serial";
	  	 int delay=1;
		 String bodyText="nothing";
		 try
		 {
	  	 bodyText=readFile(Implicit.REALPATH+bodyFile);}
		 catch(Exception e)
		 {}
		 bodyText.replaceAll("\n", "");

	  		 try{
	  	    Properties props = new Properties();

	  	    props.put("mail.smtp.host", mailServer);
			 Session s = Session.getInstance(props,null);
	  	    MimeMessage message = new MimeMessage(s);
	  	    InternetAddress from = new InternetAddress(fromEmail);
	  	    message.setFrom(from);
	  	     message.setSubject(subject);
	  	    message.setContent(bodyText, "text/html; charset=utf-8");
	  	    InternetAddress to1 = new InternetAddress(toEmail1);
	    
	  	    message.addRecipient(Message.RecipientType.TO, to1);
	  
	    
	    
	  	    Thread.sleep(delay);	     
	  	    Transport.send(message);
	  	}
	  	catch(Exception e)
	  	{}
	      }

	  }
	  StudySession studySession = (StudySession) session.getAttribute("studysession");
	 
		
		
		// variables for researchers to edit
		String [][] infoArray={{"calvin.contestml.t1","calvin.contestml.t2","Erin Cooley <ecooley@live.unc.edu>","/user/calvin/contestml/nudgeemail_uva.html"},
	{"calvin.contestml.t1purdue","calvin.contestml.t2","Mason Burns <burns47@purdue.edu>","/user/calvin/contestml/nudgeemail_uva.txt"},	
	{"calvin.contestml.t1","calvin.contestml.t2","Calvin Lai <ecooley@live.unc.edu>","/user/calvin/contestml/nudgeemail_uva.txt"}};
	 	ArrayList <String>sentEmails=new ArrayList <String>();
		int numberOfEmailsSent=0;
		String errors="";
		
		for(String[] paramArray : infoArray){
		String firstStudyId=paramArray[0];
		String secondStudyId=paramArray[1];
		String fromAddress=paramArray[2];
		String emailFile=paramArray[3];
		
		String emailTaskName="serial"; //the id in the expt file
		String emailQuestionName="email";  // the question ID that has the email address
		String emailSubject="Reminder: Follow-up Session for Psychology Study";
		int delay=1;   //miliseconds
		int startDaysOld=10;  //how many days back to go for sending reminder emails
		int totalDays=9;  //how many total days.  There is no way currently to send to people who finished task 1 on hte current day.  DO NOT make totaldays bigger than startDaysOld
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

Connection conn=null;

PreparedStatement ps=null;
ResultSet rs=null;
 	try {
 	  
 		 conn = ConnectionPool.getConnection("research");

 		int resultCount = 0;
//ps = conn.prepareStatement("select SESSION_ID from yuiat_sessions_v where study_name = ? and SESSION_STATUS='C' AND SESSION_DATE >=trunc(sysdate-"+startDaysOld+") and session_date<trunc(sysdate-"+(startDaysOld-totalDays)+")");
ps = conn.prepareStatement("select SESSION_ID from yuiat_sessions_v where study_name = ? and SESSION_STATUS='C'");
 		ps.setString(1, firstStudyId);
 		
// 			ps = conn.prepareStatement("select session_id from yuiat_sessions_v where study_name = ? and SESSION_DATE >=trunc(sysdate-"+startDaysOld+")");
 //		ps.setString(1, firstStudyId);


 			rs = ps.executeQuery();
 			while (rs.next()) {       
         
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
		errors+=e;
 	}
	finally{
		if (rs != null) {
		        try {
		            rs.close();
		        } catch (Exception e) { errors+=e;/* ignored */}
		    }
		    if (ps != null) {
		        try {
		            ps.close();
		        } catch (Exception e) { errors+=e;/* ignored */}
		    }
		    if (conn != null) {
		        try {
		            conn.close();
		        } catch (Exception e) { errors+=e;/* ignored */}
		    }
	}


ArrayList <String> participantIds=new ArrayList <String>();
for(int x=0;x<secondSessionResponseList.size();x++)
{
try{
String pId=secondSessionResponseList.get(x);
	participantIds.add(pId);}
	catch(Exception e)
	{
	continue;
	}
}
String oldEmail;
	for(int x=0;x<studySessions.size();x++)
	{

		String participantId=studySessions.get(x);
		if(!participantIds.contains(participantId)) //email if they are in the 1st session, but not the 2nd session
		{
			try {
 	  
 		 conn = ConnectionPool.getConnection("research");

		 			ps = conn.prepareStatement("select QUESTION_RESPONSE from YUIAT_QUESTIONNAIRE_DATA_V where SESSION_ID =? and QUESTIONNAIRE_NAME = ? and QUESTION_NAME=?");
 		ps.setString(1, participantId);
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
				SendEmail test= new SendEmail(fromAddress,oldEmail,emailSubject,emailFile,1);
				Thread t = new Thread(test);
				t.start();
			numberOfEmailsSent++;
		sentEmails.add(oldEmail);
		}}
			 			catch(Exception e)
 			{errors+=e;}
			finally{
				if (rs != null) {
				        try {
				            rs.close();
				        } catch (Exception e) { errors+=e;/* ignored */}
				    }
				    if (ps != null) {
				        try {
				            ps.close();
				        } catch (Exception e) { errors+=e;/* ignored */}
				    }
				    if (conn != null) {
				        try {
				            conn.close();
				        } catch (Exception e) { errors+=e;/* ignored */}
				    }
			}

		}}
	
	}
		
		//DelayedMail researcherMail=new DelayedMail(delay, fromAddress, emailFile, fromAddress,"total_emails_sent:"+numberOfEmailsSent);
		//new Thread(researcherMail).start();
 %>
 <h2 align="center">Query Results</h2>
<p align="center">
	
	
	<%=numberOfEmailsSent%>
	<%=sentEmails.toString()%><br/>
	<%=errors%>
	
</p>
</body>
</html>