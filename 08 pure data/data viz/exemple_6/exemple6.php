<HTML>
<head>
<meta charset="UTF-8">
<title>WORDS CITY</title>
<link rel="apple-touch-icon" href="wordscityiphone.png"/>
<meta name="apple-mobile-web-app-capable" content="yes" />
<script type="text/javascript">
function MM_openBrWindow(theURL,winName,features) { //v1.2
  window.open(theURL,winName,features);
}
</script>
<script type="text/javascript">
(function(document,navigator,standalone) {
if ((standalone in navigator) && navigator[standalone]  ) { 
var curnode, location=document.location, stop=/^(a|html)$/i;
document.addEventListener('click', function(e) {
curnode=e.target;
while (!(stop).test(curnode.nodeName)) {
curnode=curnode.parentNode;
}
if('href' in curnode && ( curnode.href.indexOf('http') || ~curnode.href.indexOf(location.host) ) ) {
e.preventDefault();
location.href = curnode.href;
}
},false);
}
})(document,window.navigator,'standalone');

</script>

<style type="text/css">
<!--
.cache {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 90px;
	font-style: normal;
	line-height: normal;
	font-color: #FF0000;
	text-decoration: none;
	display: none;
	text-align: justify;
	float: left;
	left: 150px;
	position: absolute;
	background-color: #FCCCCCC;
	margin: 2px;
	padding: 2px;
	border: thin dotted #FF0000;
}
-->
</style>
<style type="text/css">
<!--
a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 45px;
	color: #FF0000;
	text-decoration: none;
}
a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 45px;
	color: #FF0000;
	text-decoration: none;
}
a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size:45px;
	color: #FFFFFF;
	text-decoration: blink;
	background-color: #FF0000;
}

body {
 background-image: url("captback.png");
 background-repeat: no-repeat ;
 background-attachment: fixed ;
background-size: cover;
}

#apDiv3 {
	position:absolute;
	width:755px;
	height:402px;
	z-index:1;
	left: 96px;
	top: 135px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 50px;
	font-style: normal;
	line-height: normal;
	color: #F00;
}
.menuTransitionBorder{
    height:50px;
}
.menuTransitionBorder a{
    padding:10px;
    color:#FF00006;
    text-decoration:none;
    border-bottom:1px solid #FF0000;
    -webkit-transition: border .6s ease-in;
    -moz-transition: border .6s ease-in;
    -o-transition: all .6s ease-in;
    transition: border .6s ease-in;
}
.menuTransitionBorder a:hover{
    border-bottom:200px solid #FF0000;
}


-->
</style>

</head>
<body>

<div id="apDiv3"><?php
$ouvre=fopen("textTEST.txt","r");  // ouverture du fichier
while (!feof ($ouvre))          // tant que pas en fin de fichier
	{

$lecture = fgets($ouvre, 4096); // stockage dans $lecture
$donnee = htmlentities($lecture, ENT_QUOTES, "UTF-8");
$donnee2=explode(";",$donnee); 

$combien=count($donnee2)-1; // nbre d'�l�ments s�par�s par "*"
echo "<b>il y a ",$combien," mots : </b><br><br>";

for ($i=0;$i<=$combien;$i++)
	{
echo $donnee2[$i],"<br>";  // affichage des donn�es
	}

	}
fclose($ouvre);		// fermeture
?></div>
</body></HTML>