#!/usr/bin/perl -w
require "cgi-lib.pl";
ReadParse();
$a = $in{"message"};
open(FIC, '>>../livre_dor.txt') || die 'problème d\'ouverture...';
print FIC "$a\n";
close(FIC);



print "Content-type: text/html\r\n\r\n";
print "<html lang='FR'>";
 
print "<head>";
	print "<meta charset='utf-8' \/>";
	print "<link rel='stylesheet' href='..\/reset.css' \/>";
	print "<link rel='stylesheet' href='..\/style_haut_de_la_page.css'\/>";
	print "<link rel='stylesheet' href='..\/style_livre_dor.css' \/>";
	print "<link href='..\/images/icone.png' rel='shortcut icon' type='image\/png' \/>";
	print "<title>Livre d'or<\/title>";
print"<\/head>";

print "<body>";
 
	print "<header>";
		print "<ul class='header'>";
			print"<li><a href='..\/Accueil.html'>Accueil<\/a><\/li>";
			print"<li><a href='..\/liste.html'>Articles<\/a><\/li>";
		print "<\/ul>";
		print "<img id='imageLogo' src='..\/images\/banniere_1920_v4.png' alt='Logo du site'\/>";
		print "<ul class= 'header'>";
			print "<li><a href='..\/contact.html'>Contact<\/a><\/li>";
			print "<li><a href='livre_dor.pl'>Livre d'Or<\/a><\/li>";
		print "<\/ul>";
	print "<\/header>";

	print "<p class='remerciement'>Merci d'avoir laissé un message!<\/p>";
	print "<p class='remerciement'><a href='livre_dor.pl'>Retourner dans le livre d'or<\/a><\/p>";

	print "<footer>";
		print "<p>";
			print	"Faculté des sciences et techniques<br>";
			print "87000 LIMOGES Cedex";
		print "<\/p>";
	print "<\/footer>";
print "<\/body>";
print "<\/html>";

exit;