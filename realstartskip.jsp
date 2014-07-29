<%@page import="java.util.*, org.uva.*" errorPage="/research/ShowError.jsp"%>
<%@ taglib uri="/tags" prefix="pi" %>
<%
StudySession studySession = (StudySession) session.getAttribute("studysession");
Node taskNode = (Node) studySession.getCurrentTask();
String taskID = "";
if (taskNode instanceof PageTask) {
  taskID = taskNode.getId();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
  body {font-family: arial,verdana,sans-serif;}
  .text {font-size:20px}
  .heading {font-size:22px; font-weight:bold;text-align:center}
  .blockcenter{margin-left: auto; margin-right: auto}
  .textcenter{text-align:center}
   #NextTask {font-size:22px} 
</style>
<title>Intro</title>
    <script type="text/javascript" src="/implicit/common/en-us/js/task.js"></script>

<script language="javascript">
function fisherYates ( myArray ) 
{
  var i = myArray.length;
  if ( i == 0 ) return false;
  while ( --i ) 
  {
     var j = Math.floor( Math.random() * ( i + 1 ) );
     var tempi = myArray[i];
     var tempj = myArray[j];
     myArray[i] = tempj;
     myArray[j] = tempi;
  }
}
function cont()
{
	document.theform.submit();
}
//Set the CS's for this session. We save it in the form below and read it during the session.

	var tasks = ["instructions_set1_cc_pre", "instructions_set1_dc_pre", "instructions_set2_cc_pre", "instructions_set2_dc_pre", "instructions_set1_cd_pre", "instructions_set1_dd_pre", "instructions_set2_cd_pre", "instructions_set2_dd_pre", "nopre_s1c","nopre_s2c","nopre_s1d","nopre_s2d"];
fisherYates(tasks);
var nextTask = tasks[0];

</script>
<script>
function clickButton()
{
document.getElementById('button1').click();
}
</script>

</head>
<body onload="clickButton()">
<center>
<table width=95%>
	<tr>
		<td>
			<p align="left" class=text>
			<br></p>
		</td>
	</tr>
	<form name="theform" action="/implicit/Study" method="POST" enctype="application/x-www-form-urlencoded">
	<script type="text/javascript">
			document.write('<input type="hidden" name="tid" value="' + xGetCookie('tid') + '" />');
			document.write('<input type="hidden" name="nexttask" value="' + nextTask + '" />');
	</script>
	<input type="hidden" name="mode" value="insQuesData" />
    <tr><td><center><INPUT TYPE=BUTTON id="button1" style="visibility:hidden" OnClick=javascript:cont(); VALUE="Continue"></center></td></tr>
	</form>
</table>
</center>
</body>
</html>
