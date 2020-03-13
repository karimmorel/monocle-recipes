<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" indent="yes" />

  <xsl:template match="*">
    <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
<html lang="fr">

<!-- Head -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<title><xsl:value-of select="/data/params/website-name"/> - <xsl:value-of select="/data/params/ds-recipe-page.name"/></title>
<link rel="stylesheet" href="{$workspace}/theme/ressources/css/index.css"/>
<script src="{$workspace}/theme/ressources/js/jquery.min.js"></script>
<script src="{$workspace}/theme/ressources/js/script.js"></script>
<meta content="width=device-width, initial-scale=1" name="viewport" />
</head>

<!-- Body -->
<body>

<!-- Nav -->
<nav>
<div id="nav-content">
    <img src="{$workspace}/theme/ressources/img/logomark.png" alt="Monocle Recipes Logo"/>
	<h1><xsl:value-of select="/data/params/website-name"/></h1>
</div>
</nav>

<!-- Content -->
<div id="content">
<div id="ingredients-container">
<div id="ingredients-list-container">
<h2>Welcome to Monocle Recipes</h2>

    <ul class="default-list">
    <xsl:for-each select="all-recipes/entry">
    <li>
    <a href="recipe/{slug}">
    <xsl:value-of select="name"/>
    </a>
    </li>
    </xsl:for-each>
    <li><a href="admin/">Administration</a></li>
    </ul>
    </div>
</div>

</div>

</body>

</html>
</xsl:template>

</xsl:stylesheet>
