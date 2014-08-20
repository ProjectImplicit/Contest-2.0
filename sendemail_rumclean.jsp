<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.util.*, javax.mail.*, javax.mail.internet.*,org.uva.*" %>

<%
  class SendEmail implements Runnable {

	 StudySession studySession;
    public void run() {
     String status = "true";
	 String mailServer = "localhost";
     String Subject = "Time-sensitive: Follow-Up Session for Psychology Study";
	 String fromEmail = "Meghan McLean<meghan.mclean@rutgers.edu>";
	 String emailTaskId="serial";
	 String toEmail1 =studySession.v(emailTaskId+".email"); 
	 long sessionId=studySession.getId();
	 int delay=1;
	 String bodyText="nothing";
	 	 bodyText ="<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" id=\"background-table\" style=\"background-color: #ececec;\"> <tbody><tr style=\"border-collapse: collapse;\"> <td align=\"center\" bgcolor=\"#ececec\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;\"> <table class=\"w640\" style=\"margin: 0 10px;width: 600px !important;\" width=\"640\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"> <tbody><tr style=\"border-collapse: collapse;\"><td class=\"w640\" width=\"640\" height=\"20\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 600px !important;\"></td></tr> <tr style=\"border-collapse: collapse;\"> <td class=\"w640\" width=\"640\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 600px !important;\"> <table id=\"top-bar\" class=\"w640\" width=\"640\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" bgcolor=\"#FFFFFF\" style=\"border-radius: 6px 6px 0px 0px;-moz-border-radius: 6px 6px 0px 0px;-webkit-border-radius: 6px 6px 0px 0px;-webkit-font-smoothing: antialiased;background-color: #FFFFFF;color: #FFFFFF;width: 600px !important;\"> <tbody><tr style=\"border-collapse: collapse;\"> <td class=\"w15\" width=\"15\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 5px !important;\"></td> <td class=\"w325\" width=\"350\" valign=\"middle\" align=\"left\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 95px !important;\"> <table class=\"w325\" width=\"350\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 95px !important;\"> <tbody><tr style=\"border-collapse: collapse;\"><td class=\"w325\" width=\"350\" height=\"8\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 95px !important;\"></td></tr> </tbody></table> <div class=\"header-content\" style=\"-webkit-text-size-adjust: 80% !important;-ms-text-size-adjust: 80% !important;font-size: 12px;color: #FFFFFF;\"></div> <table class=\"w325\" width=\"350\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 95px !important;\"> <tbody><tr style=\"border-collapse: collapse;\"><td class=\"w325\" width=\"350\" height=\"8\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 95px !important;\"></td></tr> </tbody></table> </td> <td class=\"w30\" width=\"30\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 10px !important;\"></td> <td class=\"w255\" width=\"255\" valign=\"middle\" align=\"right\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 185px !important;\"> <table class=\"w255\" width=\"255\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 185px !important;\"> <tbody><tr style=\"border-collapse: collapse;\"><td class=\"w255\" width=\"255\" height=\"8\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 185px !important;\"></td></tr> </tbody></table> <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\"> <tbody><tr style=\"border-collapse: collapse;\"> <td valign=\"middle\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;\"></td> <td width=\"3\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;\"></td> <td valign=\"middle\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;\"><div class=\"header-content\" style=\"-webkit-text-size-adjust: 80% !important;-ms-text-size-adjust: 80% !important;font-size: 12px;color: #FFFFFF;\"></div></td> <td class=\"w10\" width=\"10\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 10px !important;\"></td> <td valign=\"middle\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;\"></td> <td width=\"3\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;\"></td> <td valign=\"middle\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;\"><div class=\"header-content\" style=\"-webkit-text-size-adjust: 80% !important;-ms-text-size-adjust: 80% !important;font-size: 12px;color: #FFFFFF;\"></div></td> <td class=\"w10\" width=\"10\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 10px !important;\"></td> <td valign=\"middle\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;\"></td> <td width=\"3\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;\"></td> <td valign=\"middle\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;\"><div class=\"header-content\" style=\"-webkit-text-size-adjust: 80% !important;-ms-text-size-adjust: 80% !important;font-size: 12px;color: #FFFFFF;\"></div></td> </tr> </tbody></table> <table class=\"w255\" width=\"255\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 185px !important;\"> <tbody><tr style=\"border-collapse: collapse;\"><td class=\"w255\" width=\"255\" height=\"8\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 185px !important;\"></td></tr> </tbody></table> </td> <td class=\"w15\" width=\"15\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 5px !important;\"></td> </tr> </tbody></table> </td> </tr> <tr style=\"border-collapse: collapse;\"> <td id=\"header\" class=\"w640\" width=\"640\" align=\"center\" bgcolor=\"#FFFFFF\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 600px !important;\"> <table class=\"w640\" width=\"640\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 600px !important;\"> <tbody><tr style=\"border-collapse: collapse;\"><td class=\"w30\" width=\"30\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 10px !important;\"></td><td class=\"w580\" width=\"580\" height=\"30\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 580px !important;\"></td><td class=\"w30\" width=\"30\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 10px !important;\"></td></tr> <tr style=\"border-collapse: collapse;\"> <td class=\"w30\" width=\"30\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 10px !important;\"></td> <td class=\"w580\" width=\"580\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 580px !important;\"> <div align=\"center\" id=\"headline\"> <p style=\"font-size: 36px;color: #FFFFFF;font-family: HelveticaNeue, sans-serif;text-align: center;margin-top: 0px;margin-bottom: 30px;\"> <strong><singleline label=\"Title\"><img src=\"https://dw2.psyc.virginia.edu/implicit/user/calvin/contestml/images/logo_ru.png\"></singleline></strong> </p> </div> </td> <td class=\"w30\" width=\"30\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 10px !important;\"></td> </tr> </tbody></table> </td> </tr> <tr style=\"border-collapse: collapse;\"><td class=\"w640\" width=\"640\" height=\"30\" bgcolor=\"#ffffff\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 600px !important;\"></td></tr> <tr id=\"simple-content-row\" style=\"border-collapse: collapse;\"><td class=\"w640\" width=\"640\" bgcolor=\"#ffffff\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 600px !important;\"> <table align=\"left\" class=\"w640\" width=\"640\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 600px !important; background-color: #FFFFFF\"> <tbody><tr style=\"border-collapse: collapse;\"> <td class=\"w30\" width=\"30\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 10px !important;\"></td> <td class=\"w580\" width=\"580\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 580px !important;\"> <repeater> <layout label=\"Text only\"> <table class=\"w580\" width=\"580\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 580px !important;\"> <tbody><tr style=\"border-collapse: collapse;\"> <td class=\"w580\" width=\"580\" style=\"font-family: HelveticaNeue, sans-serif;border-collapse: collapse;width: 580px !important;\"> <p align=\"left\" class=\"article-title\" style=\"font-size: 18px;line-height: 24px;color: #000000;font-weight: bold;margin-top: 0px;margin-bottom: 18px;font-family: HelveticaNeue, sans-serif;\"><singleline label=\"Title\">Hi!</singleline></p> <div align=\"left\" class=\"article-content\" style=\"font-size: 16px;line-height: 18px;color: #444444;margin-top: 0px;margin-bottom: 18px;font-family: HelveticaNeue, sans-serif;-webkit-text-size-adjust: 90% !important;-ms-text-size-adjust: 90% !important;\"> <multiline label=\"Description\"><p>Thanks for participating in the first part of the study for the psychology department at Rutgers University - New Brunswick. This is the follow-up mentioned at the end of the first session. Here is some info:</p></br>&#8226; This session only takes <b>5 minutes</b>.<br>&#8226; The best results for this project will occur if you can complete this follow-up session right away.  Please do it as soon as you can spare 5 minutes.<br>&#8226; You will get personalized feedback about your implicit associations.</p><br><br>Please click here to begin the follow-up: <a href=\"https://dw2.psyc.virginia.edu/implicit/Continue?study=/user/calvin/contestml/contestml.t2.rumclean.expt.xml&pID="+sessionId+"\">Second Session</a> <br><br> Feel free to email me if you have any questions. Thank you!<br><br> Sincerely, <br>&nbsp;&nbsp;Meghan McLean<br>Doctoral Student<br>Rutgers University - New Brunswick</multiline></div> </td> </tr>  </tbody></table>";

		 try{
	    Properties props = new Properties();

	    props.put("mail.smtp.host", mailServer);
	    Session s = Session.getInstance(props,null);
	    MimeMessage message = new MimeMessage(s);
	    InternetAddress from = new InternetAddress(fromEmail);
	    message.setFrom(from);
	     message.setSubject(Subject);
	    message.setContent(bodyText, "text/html; charset=utf-8");
	    InternetAddress to1 = new InternetAddress(toEmail1);
	    
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