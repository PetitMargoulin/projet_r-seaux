#!/usr/bin/perl -w 

use strict;
require "cgi-lib.pl";





print "Content-type: text/html\r\n\r\n";
 
print "<html>";
 
print "<head>";
	print "<meta charset='utf-8' \/>";
	print "<link rel='stylesheet' href='..\/reset.css' \/>";
	print "<link rel='stylesheet' href='..\/style_haut_de_la_page.css'>";
	print "<link rel='stylesheet' href='..\/style_livre_dor.css' />";
	print "<link href='..\/images\/icone.png' rel='shortcut icon' type='image\/png' \/>";
	print "<title>Livre d'or<\/title>";
print"<\/head>";

print "<body>";
 
	print "<header>";
		print "<ul class='header'>";
			print"<li><a href='..\/Accueil.html'>Accueil<\/a><\/li>";
			print"<li><a href='..\/liste.html'>Articles<\/a><\/li>";
		print "<\/ul>";
		print "<img id='imageLogo' src='..\/images\/banniere_1920_v4.png'\/>";
		print "<ul class= 'header'>";
			print "<li><a href='..\/contact.html'>Contact<\/a><\/li>";
			print "<li><a href='Livre d\'Or.html'>Livre d'Or<\/a><\/li>";
		print "<\/ul>";
	print "<\/header>";
	


	print "<div>";
		print "<form name='forum' method='post' action='ecritureFichier.pl' >";
			print"<p><h1>Vous voulez nous laisser un message? C'est par ici!</h1><input type='text' style='border:1px solid' name='message'/>";
			print"<input type='submit' name='Envoyer' value='Envoyer'>";
		print"</form>";
		print"<article>";
		open (FICHIER, "test.txt")  || die ("Un problème est survenu");
		my @LINES=<FICHIER>;
		foreach my $line (@LINES)
		{
			chomp($line);
			print "<p>$line\n</p>";
		}	
		close (FICHIER);
		print "<\/article>";
	print "<\/div>";
	
print "<\/body>";
print "<\/html>";
 


