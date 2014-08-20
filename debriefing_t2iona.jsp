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
    <p class="text">All participants in this study completed three IATs measuring associations of Black and White faces with GOOD and BAD. Prior to doing the second IAT, some participants <i>completed a task designed to change how their implicit associations would be expressed on the IAT</i>. After exposure to only one of nine of the following tasks, you were asked to participate in the Race IAT.  <p>
	<p class="text">These tasks were as follows:</p>

<p class="text">1. Practicing an IAT with Counter-stereotypical Exemplars: Participants looked at images of positive or negative individuals/exemplars and categorized images and words. </p>

<p class="text">2. Evaluative Conditioning: Participants engaged in both a categorization task and a memorization task. Participants were presented with both words (either positive or negative words) and images (African Americans or European Americans).  Participants memorized each of these words and then categorized the images that followed. During the presentation of the images, participants heard a sound (pleasant or unpleasant).  </p>

<p class="text">3. Evaluative Conditioning with the Go/No-Go Association Task (GNAT): Participants memorized words and made repeated associations between words and images in order to strengthen the association between certain images (African Americans) and “good words”. Specifically, participants were instructed to “go” when the stimulus pairing was an African American person and a Good word, and to do nothing when the stimulus pairing was not an African American person and a Good word.</p>

<p class="text">4. Implementation Intentions: Participants were given a short tutorial on how to take the IAT and were informed about the tendency for people to exhibit implicit preferences. Participants were then asked to commit themselves to a particular intention by saying to themselves silently, “I definitely want to respond to the Black face by thinking 'good'.</p>

<p class="text">5. Faking the IAT: Participants were given a short tutorial on how to take the IAT. Participants were asked to slow down when they see "Black and Bad" paired together and speed up when they see "White and Bad" paired together. </p>

<p class="text">6. Vivid Counterstereotypic Scenario: Participants read an evocative story in which the participant was assaulted by a person and helped by another person.  Participants were told to keep the story in mind throughout the rest of the study.</p>

<p class="text">7. Shifting Group Affiliations Under Threat: Participants read a vivid post apocalyptic scenario. They were then shown faces of hypothetical "friends," along with descriptions suggesting that they might be valuable as alliances (e.g., highlighting a medical background or hunting abilities).</p>

<p class="text">8. Shifting Group Boundaries Through Competition: In this task, participants were assigned to be part of a dodgeball team. Participants targeted opponents and received aid from their teammates during play. Members of the opposing team engaged in unfair play. Participants were told to keep the story in mind throughout the study.</p>

<p class="text">9. Priming Multiculturalism: Participants were encouraged to adopt a multicultural perspective. They read a prompt advocating multiculturalism, summarized the prompt in their own words, and then listed two reasons why multiculturalism “is a positive approach to inter- ethnic relations.</p>

	<p class="text">If you would like to find out more information about the various tasks and their rationales, you can obtain a copy of the manuscript at <a href="http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2155175">this link.</a></p>
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
	<p class="text">If you have any questions about this study please email the lead investigator, Calvin Lai (<a href="mailto:ckl5ae@virginia.edu">ckl5ae@virginia.edu</a>).</p>
	<p class="text"><strong>You can also request a copy of the debriefing statement emailed to you or ask further questions about the study by contacting:  </strong></p>
<p class="text">Shaki Asgari, Ph.D.</br>
Department of Psychology, 16 Doorley Hall</br>
Iona College, New Rochelle, NY 10801</br>
Telephone: (914) 633-2379</br>
Email: <a href="mailto:sasgari@iona.edu">sasgari@iona.edu</a>
</p>
	<p class="text"><strong>If you have questions about your rights in the study, contact: </strong></p>
<p class="text">Dr. Tresmaine Grimes</br>
Provost's Office</br>
Telephone: 914-633-2602</br>
E-Mail: <a href="mailto:tgrimes@iona.edu">tgrimes@iona.edu</a></p>
<p class="text">&#10148; If you feel any adverse emotional/psychological discomfort as a consequence of participating in this study, please contact the Iona College Counseling Center at: (914) 633-2038. You can also contact LifeNet a toll-free crisis line at 800-543-3638. </p>
		</td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
