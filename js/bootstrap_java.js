function cacher()
{
	var lesparties=new Array("maga","fact","adm","creercat","ajouterart","apropos","consult","consultStock","StockAdm","gestionuti","etafac","ben");
		for (var i = 0; i <=11; i++)
		{
			document.getElementById(lesparties[i]).style.display="none";
		}
}

function afficher(partie)
{
	var lesparties=new Array("maga","fact","adm","apropos");
	for (var i =0; i <= 3; i++) 
	{
		document.getElementById(lesparties[i]).style.display="none";
		document.getElementById(partie).style.display="block";
	}
}
function verifier()
{
	if (document.forms["form1"].NumCat.value=="")
	{
		alert("Saisir d'abort le No Cat");
			return false;
	}
}
function afficher1(partie)
{
	var lesparties=new Array("creercat","ajouterart","consult","consultStock","StockAdm","gestionuti","etafac","ben");
		for (var i = 0; i <=7; i++) 
		{
			document.getElementById(lesparties[i]).style.display="none";
			document.getElementById(partie).style.display="block";
		}
}