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
    <p class="text">All participants in this study completed three IATs. Prior to doing the second IAT, some participants completed a task designed to change how their implicit associations would be expressed on the IAT. You could have been assigned to one of nine tasks or no task at all:<p>
<p class="text"><b>Control condition:</b> No task at all.  Implicit associations measured in the second IAT should be unchanged from those measured in the first IAT.</p>

<p class="text"><b>Vivid Counterstereotypic Scenario:</b> In this task, participants read a vivid story portraying a White man as a criminal and a Black man as a hero.  These roles run counter to prevalent stereotypes about and attitudes toward Whites and Blacks, in general.  We hoped that reading the vivid story would diminish implicit anti-Black associations.  </p>

<p class="text"><b>Shifting Group Boundaries Through Competition:</b> In this task, participants played a virtual game of dodgeball in which all of their teammates were White and all of their opponents were Black.  By competing against White people and being allied with Black people, we hoped that implicit anti-Black associations would be diminished.</p>

<p class="text"><b>Shifting Group Affiliations Under Threat:</b> In this task, participants read about a threatening scenario, and imagined that they had friends and enemies in the context of this scenario.  Friends were Black and enemies were White.  We hoped this situation would diminish implicit anti-Black implicit associations.</p>

<p class="text"><b>Affirming Egalitarian Values:</b> One task attempted to induce an egalitarian mindset by writing a short essay about multiculturalism.  We hoped this would diminish implicit anti-Black associations.</p>

<p class="text"><b>Evaluative Conditioning:</b> In this task, participants viewed pictures of Black and White people paired with positive or negative words.  Participants categorized the picture/word pairings according to the race of the person in the photo.  Photos of Black people were always paired with positive words and photos of White people were always paired with negative words.  We hoped that by always pairing photos of Black people with positive words and always pairing photos of White people with negative words, implicit anti-Black associations would diminish.</p>

<p class="text"><b>Evaluative Conditioning with the Go-No-Go Association Task:</b> In this task, participants viewed pairings of photos of Black and White faces with positive or negative words.  Sometimes Black faces were paired with positive words, and sometimes they were paired with negative words.  The same was true for White faces.  However, participants were instructed to only press the spacebar if a Black face was paired with a positive word, and not to press the spacebar in any other situation.  We hoped that by reinforcing the Black/positive word association, anti-Black implicit associations would diminish.</p>

<p class="text"><b>Practicing an IAT with Counterstereotypical Exemplars:</b> In this task, participants were shown photos and descriptions of highly-regarded, famous Black people (e.g., Oprah), and photos and descriptions of poorly-regarded, infamous White people (e.g., Jerry Sandusky, a famous child molester).  Photos of these people were mixed in with the regular IAT photo stimuli (unknown Black and White faces).  We hoped that by seeing terrible White people and admired Black people, implicit anti-Black associations would diminish.</p>

<p class="text"><b>Faking the IAT:</b> Participants in this task were given instructions on how to "cheat" on the IAT to make themselves appear less prejudiced.  This was done instead of trying to change implicit associations directly.</p>

<p class="text"><b>Implementation Instructions:</b></b> Participants in this task were given the following instructions: "We would like you to commit yourself to responding to the Black face by thinking the word "good."  This was done instead of trying to change implicit associations directly.</p>

	<p class="text">We will compare how different types of tasks influence the results to learn something about the IAT and what it assesses. You also took the IAT in a second session to assess the impact of these experiences over time. Some experiences may have fleeting effects, while others may induce psychological change that lasts. If you would like to find out more information about the various tasks and their rationales, you can obtain a copy of the manuscript at <a href="http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2155175">this link.</a></p>
	<p class="text">We apologize that we could not reveal our true hypotheses to you at the beginning of the study, but we hope you can see why it was necessary to keep this information from you.  When people know exactly what the researcher is studying, they often change their behavior, thus making their responses unusable for drawing conclusions about human nature and experiences.  <b>For this reason, we ask that you please not discuss this study with other students who might participate anytime in the next year.  Thank you for your cooperation.</b></p>
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
	<p class="text">You have the right to withdraw your data from this study.  If you wish to do so, please email Calvin Lai at <a href="mailto:ckl5ae@virginia.edu">ckl5ae@virginia.edu</a> or Rachel Rubinstein at <a href="mailto:rachel.rubinstein@rutgers.edu">rachel.rubinstein@rutgers.edu</a>.</p>
	<p class="text">If your participation in this study has in any way upset you, please feel free to set up an appointment with one of Rutgers licensed psychologists or counselors.  Counseling Services can be reached at (848) 932-7884.  The counseling center is located at 17 Senior Street in New Brunswick.</p>
	<p class="text">Thanks again for your participation.</p>
<p class="text">If you have any questions about this study please email the lead investigator, Calvin Lai (<a href="mailto:ckl5ae@virginia.edu">ckl5ae@virginia.edu</a>).  Alternatively, you may also email Rachel Rubinstein (<a href="mailto:rachel.rubinstein@rutgers.edu">rachel.rubinstein@rutgers.edu</a>), or email or call Dr. David Wilder (<a href="mailto:dawilder@rci.rutgers.edu">dawilder@rci.rutgers.edu</a>, 848-445-1991) with questions about the study.</p>

		</td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
