<%@page import="java.util.*, org.uva.*" errorPage="/research/ShowError.jsp"%>
<%@ taglib uri="/tags" prefix="pi" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
<%
 	     
 	     StudySession mysession = (StudySession) session.getAttribute("studysession");
 	       
 	     String iatfeedback="absent";            
		 
       if (mysession!=null) {   
        
         String status = "true";
		
       
   
       iatfeedback = mysession.v("5b_iatc_set1_post2.feedback");
       if (iatfeedback==null) iatfeedback=mysession.v("5b_iatd_set1_post2.feedback");
       if (iatfeedback==null) iatfeedback=mysession.v("5b_iatc_set2_post2.feedback");
       if (iatfeedback==null) iatfeedback=mysession.v("5b_iatd_set2_post2.feedback");
      }
			
		%>
<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<title>Debriefing</title>
 	<script type="text/javascript">
		function hlght() { if (document.getElementById) document.getElementById('gttt').style.backgroundColor = "#ffffff" ; }
		function llght() { if (document.getElementById) document.getElementById('gttt').style.backgroundColor = "#c2d2dd" ; }
	</script>
	<script language="JavaScript" type="text/javascript" src="/implicit/common/en-us/js/task.js"></script>
<script language="javascript" type="text/javascript" src="/implicit/common/en-us/js/closeWindow.js"></script>
	<style type="text/css"> 
.hi { background-color: #eaf1dc; }
.core {
          background-color: #ffffff; 
          border: 1px solid #000000;
              }
.text1
{	font-family: verdana, arial, helvetica, sans-serif;
	font-size: 95%;
	color: #000000;
} 
.smltext
{	font-family: verdana, arial, helvetica, sans-serif;
	font-size: 70%;
	color: #000000;
} 
  
a.menlnk
{	font-family: arial, helvetica, sans-serif;
	font-size: 11px;
	font-weight: bold;
	color: #000000;
	text-decoration: none;
} 
a.menlnk:hover
{	color: #ffffff;
	text-decoration: none;
} 
 .dblu
{	background-color: #2c6eac;
	border-right: 2px inset #676767; 
	border-bottom: 2px inset #676767; 
} 
 .dblu a {
	display:block;
	margin:0;
} 
 .lblu
{	background-color: #c2d2dd;
} 
 #gttt a
{	font-family: arial, helvetica, sans-serif;
	font-size: 11px;
	font-weight: bold;
	color: #000000;
	text-decoration: none;
} 
</style>
 <link rel="stylesheet" href="/implicit/research.css" type="text/css" />
  
 <style type="text/css">
<!--
.text {font-family:arial,sans-serif,times; font-size:16px;}
-->
</style>
</head>
  
<body>
 <table width=100%>
<tr><td>
  
<table width="800px" class=core align="center"  cellpadding="5" cellspacing="0" border="0">
 <tr><td colspan=2 width="890px" align="center">&nbsp;</td> </tr>
  
<tr><td>
	<p align="center" class="text"><strong>You have completed the study.</strong></p>
    <p class="text">Thank you for your participation. This page will give you some general information about the goals of the study as well as provide you with feedback about your performance. </p>
    <p class="text">The categorization task you completed is called the Implicit Association Test (IAT).  The task assesses associations between concepts by measuring how quickly a person can categorize, for example, GOOD words with White faces compared to GOOD words with Black faces.  The test often reveals associations that are different than one's conscious beliefs.  For example, even people who have no conscious preference between Black and White may still have implicit associations that White is better than Black.  The purpose of this study is to test how associations about ethnic groups can be influenced through a variety of tasks.</p>
    <p class="text">All participants in this study completed three IATs measuring associations of Black and White faces with GOOD and BAD. Prior to doing the second IAT, some participants completed a task designed to change how their implicit associations would be expressed on the IAT. You could have been assigned to one of nine tasks or no task at all. These nine tasks fell into one of three categories:
	<p class = "text"><b>Considering Counterstereotypical Associations.</b> These tasks exposed participants to positive Black people and negative White people. These experiences varied widely in their complexity. In the more basic tasks, participants played categorization games where they paired Black people with Good words and White people with Bad words. In more complex tasks, participants participated in a narrative where Black people were their friends and White people were their enemies.</p>
	<p class = "text"><b>Affirming Egalitarian Values.</b> One manipulation attempted to induce an egalitarian mindset. In this task, participants wrote a short essay about multiculturalism.</p>
	<p class = "text"><b>Strategies to Overcome Implicit Bias.</b> Rather than changing implicit associations directly, participants in these tasks were given strategies to override the expression of their implicit bias on the IAT. One task gave instructions on how to "cheat" the IAT, while another approach instructed participants to set the plan: "If I see a Black face, then I will respond by thinking good!"</p>
	<p class="text">We will compare how different types of experiences influence the results of the measure to learn something about the IAT and about what it assesses. You also took the IAT a third time to assess the impact of these experiences over time. Some experiences may have fleeting effects, while others may induce psychological change that lasts.  If you would like to find out more information about the various tasks and their rationales, you can obtain a copy of the manuscript at <a href="http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2155175">this link.</a></p>
	<p class="text">You just completed a Implicit Association Test, measuring your associations of White and Black people with good and bad.  Your results from the Implicit Association Test you just completed are reported below: </p>
	</td>
</tr>
<tr><td class="hi"><h2><%=iatfeedback%></h2></td></tr>
<tr><td>
	<p class="text">Depending on the magnitude of your result, your 
	  	automatic associations may be described as 'slight', 'moderate', 'strong', or 'little to no preference'. 
		How implicit associations affect our judgments and behaviors is not well understood. Also, 
		the score described above may be influenced by a number of variables including your 
		familiarity with the categories and the particular items used to represent the categories. 
		As such, the score should serve as an opportunity for self-reflection, not as a definitive 
		assessment of your implicit thoughts or feelings. This and future research will clarify the 
		way in which implicit thinking and feelings affects our perception, judgment, and action.</p>
		
		<p class="text">If you have unanswered questions about the IAT, please review 
		<a href="/implicit/backgroundinformation.html">background information</a> 
		about this research and follow the links to the questions of specific interest to you.</p>
	<p class="text">Thanks again for your participation.</p>
	<p class="text">If you have any questions about this study please email the lead investigator, Gina Roussos (<a href="mailto:gina.roussos@yale.edu">gina.roussos@yale.edu</a>).</p>
		</td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
