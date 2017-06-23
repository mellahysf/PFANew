<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Catégories/Modules</title>
<link rel="stylesheet" href="././assets/css/catMod.css" type="text/css">
</head>
<header> 

	<%@include file="header_front.jsp"%>

</header>
<body>

	<div id="categories">
		<ul>
			<c:forEach items="${ categories }" var="categorie">
				<a href="Front?idCategorie=${categorie.id }"><li><img
						alt="${categorie.categorie }" src="assets/images/${categorie.icon }">
						${categorie.categorie }</li> </a>
			</c:forEach>
		</ul>
	</div>
	<div id="modules">
		<c:set var="categorie" value="true" />
		<c:forEach items="${ listModule }" var="module">
			<c:if test="${categorie==true}">
				<h2>Liste des modules de la categorie ${ module.categorie }</h2>
				<c:set var="categorie" value="false" />
			</c:if>
			<a href="Matiere?module=${module.id }">
				<div class="module">
					<img src="assets/images/${module.image }" alt="${ module.module }">
					<h3>${module.module }</h3>
					<p>${module.description }</p>
				</div>
			</a>
		</c:forEach>
	</div>
	<div class="clear"></div>
</body>
<footer> 
	
	<%@include file="footer.jsp"%>
</footer>
</html>