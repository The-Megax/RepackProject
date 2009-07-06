<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<?php
if(isset($_POST['submit']))
{
mysql_connect(localhost, user, pass);
mysql_select_db(databasename);
$user = mysql_real_escape_string($_POST['login']);
$pass = mysql_real_escape_string($_POST['password']);
$email = mysql_real_escape_string($_POST['email']);
$pack = mysql_real_escape_string($_POST['formselect1']);

$query = "INSERT INTO accounts (login, password, email, flags) VALUES ('" . $user . "', '" . $pass . "', '" . $email . "', '" . $pack . "');";
$do = mysql_query($query);

mysql_close();
?>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<title>UndeadWoW - Account Creation</title>

<style type="text/css">
/*----------Text Styles----------*/
.ws6 {font-size: 8px;}
.ws7 {font-size: 9.3px;}
.ws8 {font-size: 11px;}
.ws9 {font-size: 12px;}
.ws10 {font-size: 13px;}
.ws11 {font-size: 15px;}
.ws12 {font-size: 16px;}
.ws14 {font-size: 19px;}
.ws16 {font-size: 21px;}
.ws18 {font-size: 24px;}
.ws20 {font-size: 27px;}
.ws22 {font-size: 29px;}
.ws24 {font-size: 32px;}
.ws26 {font-size: 35px;}
.ws28 {font-size: 37px;}
.ws36 {font-size: 48px;}
.ws48 {font-size: 64px;}
.ws72 {font-size: 96px;}
.wpmd {font-size: 13px;font-family: 'Arial';font-style: normal;font-weight: normal;}
/*----------Para Styles----------*/
DIV,UL,OL /* Left */
{
 margin-top: 0px;
 margin-bottom: 0px;
}
</style>

<style type="text/css">
div#container
{
	position:relative;
	width: 895px;
	margin-top: 0px;
	margin-left: auto;
	margin-right: auto;
	text-align:left; 
}
body {text-align:center;margin:0}
</style>

</head>

<body Text="#FFFFFF" bgColor="#000000">

<div id="container">
<div id="image1" style="position:absolute; overflow:hidden; left:0px; top:150px; width:895px; height:587px; z-index:0"><img src="images/skin-wow.jpg" alt="" border=0 width=895 height=587></div>

<div id="text1" style="position:absolute; overflow:hidden; left:495px; top:333px; width:247px; height:208px; z-index:1"><div class="wpmd">
<div><font class="ws14" color="#008000" face="Tahoma">Select Expansion !</font></div>
<div><font class="ws14" color="#008000" face="Tahoma"><BR></font></div>
<div><font color="#000000" face="Tahoma">Select your WoW Expansion :</font></div>
<div><font color="#000000" face="Tahoma"><BR></font></div>
<div><font color="#000000" face="Tahoma">World Of Warcraft</font></div>
<div><font color="#000000" face="Tahoma">The Burning Crusade</font></div>
<div><font color="#000000" face="Tahoma">Wrath of the Lich King</font></div>
</div></div>

<div id="text2" style="position:absolute; overflow:hidden; left:232px; top:367px; width:48px; height:14px; z-index:5"><div class="wpmd">
<div><font class="ws7" color="#000000" face="Tahoma">username</font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:231px; top:409px; width:48px; height:14px; z-index:6"><div class="wpmd">
<div><font class="ws7" color="#000000" face="Tahoma">password</font></div>
</div></div>

<div id="text4" style="position:absolute; overflow:hidden; left:231px; top:447px; width:48px; height:14px; z-index:8"><div class="wpmd">
<div><font class="ws7" color="#000000" face="Tahoma">e-mail</font></div>
</div></div>

<form method="POST" action="">
<select name="formselect1" style="position:absolute;left:512px;top:496px;width:200px;z-index:2">
<option value="0">World of Warcraft</option>
<option value="8">The Burning Crusade</option>
<option value="24">Wrath of the Lich King + The Burning Crusade</option>
</select>

<input name="login" type="text" style="position:absolute;width:200px;left:232px;top:380px;z-index:3">
<input name="password" type="password" style="position:absolute;width:200px;left:231px;top:422px;z-index:4">
<input name="email" type="text" style="position:absolute;width:200px;left:231px;top:460px;z-index:7">
<input name="submit" type="image" src="images/reg.png" style="position:absolute;left:288px;top:492px;z-index:11">
</form>

<div id="text5" style="position:absolute; overflow:hidden; left:147px; top:606px; width:599px; height:16px; z-index:10"><div class="wpmd">
<div align=center><font class="ws7" face="Tahoma"><B>UndeadWoW © 2008 , All rights reserved.</B></font></div>
</div></div>


</div></body>
</html>
