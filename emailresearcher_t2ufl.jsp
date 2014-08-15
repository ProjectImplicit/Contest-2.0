<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.util.*, javax.mail.*, javax.mail.internet.*,org.uva.*" %>

<%
  class SendEmail implements Runnable {

	 StudySession studySession;
    public void run() {
     String status = "true";
	 String mailServer = "localhost";
     String Subject = "Sign Up for Contest Project - Session 2";
	 String fromEmail = "Calvin Lai <clai@virginia.edu>";
	 String emailTaskId="serial";
	 String ParticipantEmail =studySession.v(emailTaskId+".email"); 
	 String toResearcher="john.conway@ufl.edu";
	 long sessionId=studySession.getId();
	 int delay=1;
	 String bodyText="A person with the following email address has consented to the second session: "+ParticipantEmail+"";

		 try{
	    Properties props = new Properties();

	    props.put("mail.smtp.host", mailServer);
	    Session s = Session.getInstance(props,null);
	    MimeMessage message = new MimeMessage(s);
	    InternetAddress from = new InternetAddress(fromEmail);
	    message.setFrom(from);
	     message.setSubject(Subject);
	    message.setContent(bodyText, "text/html; charset=utf-8");
	    InternetAddress to1 = new InternetAddress(toResearcher);
	    
	    message.addRecipient(Message.RecipientType.TO, to1);
	  
	    
	    
	    Thread.sleep(delay);	     
	    Transport.send(message);
	}
	catch(Exception e)
	{}
    }
	void setSession(StudySession session)
	{
		studySession=session;
	}
    

}
StudySession studySession = (StudySession) session.getAttribute("studysession");
SendEmail test= new SendEmail();
test.setSession(studySession);
Thread t = new Thread(test);
t.start();
		
		 
		  
		%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>Project Implicit</title>
<style type="text/css">
	body { background-color: #ffffff; padding-left: 20px; padding-right: 20px; padding-top: 40px; margin: 0px; }
	h1 { font-family: arial, helvetica, sans-serif; font-size: 200%; padding: 0px; margin: 0px; }
	h2 { font-family: verdana, arial, helvetica, sans-serif; font-size: 150%; font-weight:normal; }
	
	.larger { font-family: arial, helvetica, sans-serif; font-size: 16px;}
</style>
<script language="JavaScript" type="text/javascript" src="/implicit/common/en-us/js/task.js"></script></head>
<body onload = "document.form1.submit_system.click();">
 	<form name="form1" method="post"  action="/implicit/Study" >
  <input name="mode" value="insQuesData" type="hidden">
	<h1 align="center">&nbsp;</h1>
	
<center> 
<script language="JavaScript" type="text/javascript">writeButton("CLICK HERE TO CONTINUE");</script> 
</center> 
</form>
	
	
	
	
</body>
</html>