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
    <p class="text">Thank you for participating in our study. In social psychological research, it is sometimes necessary to conceal our hypotheses because when people know what is being studied they often alter their answers. However, we do not want you to leave misinformed, so we will now tell you what we were actually studying.  </p>
    <p class="text">The categorization task you completed is called the Implicit Association Test (IAT). The task assesses associations between concepts by measuring how quickly a person can categorize GOOD words with White faces compared to GOOD words with Black faces. The test often reveals associations that are different than one's conscious beliefs. For example, even people who have no conscious preference between Black and White may still have implicit associations that White is better than Black. The purpose of this study is to test how associations about ethnic groups can be influenced through a variety of tasks.</p>
    <p class="text">In order to test this, all participants completed three IATs. Prior to doing the second IAT, some participants completed a task designed to change how their implicit associations would be expressed on the IAT. You could have been assigned to 1 of 9 tasks or no task at all. Participants who did no task were in the control condition which served as a comparison to the task conditions. The task conditions allow us to determine the effectiveness of the tasks in reducing racial bias. Below are descriptions of these 9 tasks. We hypothesized that participants in the following 9 intervention conditions would have more positive attitudes towards Black Americans than participants in the control condition.<p>
	
<p class="text"><strong>Practicing an IAT with Counterstereotypical Exemplars: </strong>This intervention reinforced positive associations with Blacks and negative associations with Whites. Participants repeatedly categorized Black+Good and White+Bad. Of the names being categorized, 6 of them were well-known positive Black exemplars and 6 were negative White exemplars. Prior research demonstrates that exposure to positive Black and negative White exemplars can shift racial preferences favorably for Blacks.  </p>

<p class="text"><strong>Evaluative Conditioning:</strong> Participants were presented with a positive or negative word and an image of a Black or White face. Words were presented for 1 second and the task was to memorize each of the words, and to categorize the faces as Black or White. </p>

<p class="text"><strong>Evaluative Conditioning with the Go/No-Go Association Task:</strong> Participants rapidly and repeatedly associated Black people and &quot;good.&quot; Participants responded when the stimuli fit the Black+good category ('go'), and abstained from responding when the stimuli pairings did not fit the categories ('no-go'). The majority of stimulus pairings are composed of Black people and Good words. Thus, this task strengthened automatic associations between Black people and Good. </p>

<p class="text"><strong>Implementation Intentions:</strong> Participants were instructed to think the word &quot;good&quot; when viewing a Black face to measure how intending to hold positive attitudes towards Blacks impacts attitudes.   </p>

<p class="text"><strong>Faking the IAT:</strong> Participants were told about how the IAT works and asked to fake positive attitudes towards Blacks. This condition was used so we could compare results in this faking condition to other interventions.   </p>

<p class="text"><strong>Vivid Counterstereotypic Scenario:</strong> Participants read a scenario in which a White man assaults the participant and a Black man rescues the participant. Participants were instructed to keep the story in mind during the IAT to see if it improve racial biases. </p>

<p class="text"><strong>Shifting Group Affiliations Under Threat:</strong> During times of threat, people become more attentive to cues of alliance. Participants read a threatening post-apocalyptic story and were shown faces of “friends,” most of whom were Black.  </p>

<p class="text"><strong>Shifting Group Boundaries Through Competition:</strong> Participants played a virtual dodgeball match in which they were members of an all-black team competing against an all-white team. </p>

<p class="text"><strong>Priming Multiculturalism:</strong> Experimental evidence suggests that colorblindness elicits stronger racial bias compared with multiculturalism &mdash; the idea that racial differences should be acknowledged and celebrated. This intervention examined the effect of multiculturalism on racial attitudes by encouraging participants to adopt a multicultural perspective.</p>

	<p class="text">We will compare how different types of experiences influence the results to learn something about the IAT and what it assesses. You also took the IAT in a second session to assess the impact of these experiences over time. Some experiences may have fleeting effects, while others may induce psychological change that lasts. If you would like to find out more information about the various tasks and their rationales, you can obtain a copy of the manuscript at <a href="http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2155175">this link.</a></p>
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
		<p class="text">We apologize that we could not reveal our true hypotheses to you at the beginning of the study, but we hope you can see why it was necessary to keep this information from you.  When people know exactly what the researcher is studying, they often change their behavior, thus making their responses unusable for drawing conclusions about human nature and experiences.  For this reason, we ask that you please not discuss this study with other students who might participate anytime in the next year.  Thank you for your cooperation.</p>
		<p class="text">If your participation in this study has in any way upset you, please feel free to set up an appointment with one of Rutgers licensed psychologists or counselors.  Counseling Services is located at 17 Senior Street, New Brunswick, NJ 08901 and they can be reached at (<a href="http://rhscaps.rutgers.edu/">http://rhscaps.rutgers.edu/</a> or 732-932-7884). </p>
		
		<p class="text">If you have unanswered questions about the IAT, please review 
		<a href="/implicit/backgroundinformation.html">background information</a> 
		about this research and follow the links to the questions of specific interest to you.</p>
	<p class="text">Thanks again for your participation.</p>
	<p class="text">If you have any questions about this study or would like to have your data excluded from the study, please email the lead investigator, Calvin Lai (<a href="mailto:ckl5ae@virginia.edu">ckl5ae@virginia.edu</a>) or contact the lead investigator at Rutgers University, Meghan McLean at <a href="meghan.mclean@rutgers.edu">meghan.mclean@rutgers.edu</a>, (860) 304-6075, or Tillett 615, 53 Avenue E, Piscataway NJ, 08854-8040. Or you can contact Meghan's advisor, Dr. Laurie Rudman at <a href="rudman@rci.rutgers.edu">rudman@rci.rutgers.edu</a>, (848) 445-3404, or Tillett 611, 53 Avenue E, Piscataway NJ, 08854-8040. .</p>
		</td>
</tr>
</table>
</td>
</tr>
</table>
</body>
</html>
