<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*" mode="content">

<div id="content">
<div id="ingredients-container">
<div id="ingredients-list-container">
    <h2>Ingredients</h2>
    <ul class="default-list">
    <xsl:for-each select="recipes-quantity/entry">
    <li>
    <xsl:value-of select="quantity"/>
    <xsl:value-of select="unit"/>
    <xsl:value-of select="ingredient"/>
    <xsl:if test="precision"> , </xsl:if>
    <xsl:value-of select="precision"/>
    </li>
    </xsl:for-each>
    </ul>
    </div>
    <div id="recipe-image-container">
    <img src="{$workspace}/{recipe-page/entry/image/filename}" alt="Recipe's Image"/>
    <div id="recipe-image-description">
    <xsl:value-of select="recipe-page/entry/image-description" />
    </div>
    </div>
</div>

<div id="recipe-method-container">
    <h2>METHOD</h2>
    <div id="recipe-method-list">
    <ul class="default-list">
    <xsl:for-each select="method/entry">
    <li>
    <xsl:value-of select="order"/>. 
    <xsl:value-of select="description"/>
    </li>
    </xsl:for-each>
    </ul>
    </div>
</div>

<div id="comments-container">
<div id="comments-title-container">
<h3>Comments</h3>
</div>

<div id="comments-form-container">
    <p id="form-error">Invalid form</p>
<form method="post" action="{$current-url}/" enctype="multipart/form-data">
    <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
    <label id="name-label">Name:*</label>
        <input id="name-input" class="input-text" name="fields[name]" type="text" />
    <br/>
    <label id="email-label">Email:*</label>
        <input id="email-input" class="input-text" name="fields[email]" type="text" />
    <br/>
    <label id="comment-label">Comment:*</label>
        <textarea id="comment-input" class="input-textarea" name="fields[comment]" rows="15" cols="50"></textarea>
    <br/>
    <input type="hidden" name="fields[recipe]" value="{$ds-recipe-page.name}"/>
    <label></label><input id="submit-comment" name="action[comments]" type="submit" value="Submit" />
</form>
</div>

<div id="comments-list-container">
<xsl:for-each select="comments/entry">
<hr/>
    <div class="comment-container">
    <h4 class="comment-name"><xsl:value-of select="name"/></h4>
    <p class="comment-email"><xsl:value-of select="email"/></p><br/>
    <p class="comment-content"><xsl:value-of select="comment"/></p>
    </div>
    </xsl:for-each>
</div>

</div>
</div>

</xsl:template>
</xsl:stylesheet>