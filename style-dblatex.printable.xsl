<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
  <xsl:param name="doc.toc.show">1</xsl:param>
  <xsl:param name="doc.lot.show">figure,example</xsl:param>
  <xsl:param name="latex.output.revhistory">0</xsl:param>
  <xsl:param name="index.numbered">0</xsl:param>
  <xsl:param name="doc.publisher.show">0</xsl:param>
  <xsl:param name="figure.tip">icons/snake</xsl:param>
  <xsl:param name="figure.note">icons/snake</xsl:param>
  <xsl:param name="figure.warning">icons/snake</xsl:param>
  <xsl:param name="figure.title">icons/snake</xsl:param>
  <xsl:param name="figure.caution">icons/snake</xsl:param>
  <xsl:param name="figure.important">icons/snake</xsl:param>

  <xsl:param name="page.width">6in</xsl:param>
  <xsl:param name="page.height">9in</xsl:param>
  <xsl:param name="page.margin.inner">0.6in</xsl:param>
  <xsl:param name="page.margin.outer">0.6in</xsl:param>
  <xsl:param name="page.margin.bottom">0.6in</xsl:param>
  <xsl:param name="page.margin.top">0.6in</xsl:param>
  <xsl:param name="body.start.indent">0pt</xsl:param>
  <xsl:param name="double.sided">1</xsl:param>
  <!-- used by dblatex -->
  <xsl:param name="latex.class.options">paper=6in:9in,pagesize=pdftex,headinclude=on,footinclude=on,twoside,11pt</xsl:param>

</xsl:stylesheet>
