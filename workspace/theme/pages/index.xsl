<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" indent="yes" />

  <xsl:template match="/">
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
<xsl:apply-templates select="*" mode="content"/>


</body>

</html>
</xsl:template>
<xsl:include href="./content.xsl"/>

</xsl:stylesheet>
