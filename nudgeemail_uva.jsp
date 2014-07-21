<%@page import="java.util.*, org.uva.*, org.uva.util.*" errorPage="/research/ShowError.jsp"%>

<%

StudySession studySession = (StudySession) session.getAttribute("studysession");

String toAddress = studySession.v("serial_uva.email");

String userId=studySession.getId()+"";

int delay=432000000;

String emailFile="/user/calvin/contestv2/nudgeemail_uva.txt";

String fromAddress="UVA Psychology <clai@virginia.edu>";

String participantId=toAddress;



DelayedMail mail=new DelayedMail(delay, toAddress, emailFile, fromAddress,userId);

		     new Thread(mail).start();

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