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
	color: #FF0000;
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
	font-size: 60px;
	color: #FF0000;
	text-decoration: none;
}
a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 60px;
	color: #FF0000;
	text-decoration: none;
}
a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size:60px;
	color: #FFFFFF;
	text-decoration: blink;
	background-color: #FF0000;
	text-align: center;
}
#apDiv1 {
	position:absolute;
	width:684px;
	height:120px;
	z-index:1;
	left: 215px;
	top: 383px;
}

body {
 background-image: url("captback.png");
 background-repeat: no-repeat ;
 background-attachment: fixed ;
background-size: cover;
}
#apDiv2 {
	position:absolute;
	width:100%;
	height:89px;
	z-index:2;
	left: -1px;
	top: 744px;
	text-align: center;
	background-color: #000000;
}
#apDiv3 {
	position:absolute;
	width:644px;
	height:60px;
	z-index:3;
	font-size: 24px;
	left: 204px;
	top: 322px;
	font-size: 46px;
}
#apDiv4 {
	position:absolute;
	width:100%;
	height:91px;
	z-index:2;
	left: -1px;
	top: 861px;
	text-align: center;
	background-color: #000000;
}
#apDiv5 {
	position:absolute;
	width:100%;
	height:91px;
	z-index:2;
	left: 0px;
	top: 979px;
	text-align: center;
	background-color: #000000;
}
#apDiv6 {
	position:absolute;
	width:489px;
	height:38px;
	z-index:4;
	left: 215px;
	top: 586px;
	font-size: 24px;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFF;
}
#apDiv7 {
	position:fixed;
	width:100%;
	height:115px;
	z-index:5;
	left: 0px;
	bottom: 10px;
	background-color: #000000;
}
#apDiv7 font {
	font-size: 36px;
	text-align: right;
}
-->
</style>
</head>
<body>
<div id="layer1" style="position:absolute; left:32px; top:68px; width:708px; height:190px; z-index:1; font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif; font-size: 80px;"> 
  <p><font color="#FF0000">EXEMPLE 2.3<br/>
    <font color="#999999" size="20">cours interaction M2</font></font></p>
</div>
<div id="apDiv1">
    <?php
/* si register_globals off (à partir de PHP 4.3)
$commentaire = $_POST['commentaire']; 
*/
// en supposant que le fichier "texte.txt"

if ($commentaire!="")
	{
	/* Ecriture avec ouverture de fichier en mode a+*/
/* mode a+ 
pour écrire à la suite des caractères 
déjà présents dans le fichier 
*/
/* mode w+ 
pour effacer les données présentes 
et écrire dans le fichier.
Si ce fichier n'existe pas il est créé.
*/

$ouvre=fopen("exemple_2_3.txt","a+"); // ouverture en lecture ( a+)
$commentaire.=";-"; //separateur
fwrite($ouvre,$commentaire);    // écriture fichier
fclose($ouvre);			// fermeture fichier
	}
?>
    <form action="<?$PHP_SELF;?>" method="post">
      <input name="commentaire" type="text" size="80" maxlength="40" value="-" style="width:690px; height:100px; font-size:37px;">
      <input type="submit" value="envoyer" style="width:250px; height:60px;font-size:50px;">
    </form>
</div>
</body></HTML>