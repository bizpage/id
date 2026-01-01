<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>XML Sitemap - Bizpage Digital</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <style type="text/css">
          body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
          }
          
          #content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
          }
          
          h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #1a365d;
            padding-bottom: 10px;
            border-bottom: 2px solid #4299e1;
          }
          
          .description {
            background-color: #e6f7ff;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 25px;
            border-left: 4px solid #4299e1;
          }
          
          table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
          }
          
          th {
            text-align: left;
            padding: 15px;
            background-color: #2d3748;
            color: white;
            font-weight: 600;
          }
          
          td {
            padding: 12px 15px;
            border-bottom: 1px solid #e2e8f0;
          }
          
          tr:hover {
            background-color: #f7fafc;
          }
          
          .url {
            font-weight: 500;
          }
          
          .url a {
            color: #3182ce;
            text-decoration: none;
            font-weight: 500;
          }
          
          .url a:hover {
            color: #2c5282;
            text-decoration: underline;
          }
          
          .priority {
            font-weight: 600;
            text-align: center;
          }
          
          .priority.high {
            color: #38a169;
          }
          
          .priority.medium {
            color: #d69e2e;
          }
          
          .priority.low {
            color: #e53e3e;
          }
          
          .footer {
            margin-top: 30px;
            text-align: center;
            color: #718096;
            font-size: 14px;
            padding: 15px;
            border-top: 1px solid #e2e8f0;
          }
          
          .count {
            background-color: #4299e1;
            color: white;
            padding: 3px 8px;
            border-radius: 12px;
            font-size: 12px;
            font-weight: 600;
            margin-left: 5px;
          }
          
          @media (max-width: 768px) {
            #content {
              padding: 10px;
            }
            
            table {
              font-size: 14px;
            }
            
            th, td {
              padding: 8px 10px;
            }
            
            .description {
              font-size: 14px;
            }
          }
        </style>
      </head>
      <body>
        <div id="content">
          <h1>XML Sitemap <span class="count"><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/></span></h1>
          
          <div class="description">
            <p>This sitemap contains all URLs for <strong>Bizpage Digital</strong> - Your Digital Marketing Partner. 
            The sitemap is automatically updated and optimized for search engines.</p>
            <p>Generated on: <xsl:value-of select="format-dateTime(current-dateTime(), '[D01]/[M01]/[Y0001] [H01]:[m01]')"/></p>
          </div>
          
          <table>
            <thead>
              <tr>
                <th>URL</th>
                <th>Last Modified</th>
                <th>Change Frequency</th>
                <th>Priority</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <tr>
                  <td class="url">
                    <a href="{sitemap:loc}" target="_blank">
                      <xsl:value-of select="sitemap:loc"/>
                    </a>
                  </td>
                  <td>
                    <xsl:value-of select="sitemap:lastmod"/>
                  </td>
                  <td>
                    <xsl:value-of select="sitemap:changefreq"/>
                  </td>
                  <td>
                    <xsl:variable name="priority" select="sitemap:priority"/>
                    <span class="priority">
                      <xsl:attribute name="class">
                        <xsl:choose>
                          <xsl:when test="$priority &gt;= 0.8">priority high</xsl:when>
                          <xsl:when test="$priority &gt;= 0.5">priority medium</xsl:when>
                          <xsl:otherwise>priority low</xsl:otherwise>
                        </xsl:choose>
                      </xsl:attribute>
                      <xsl:value-of select="$priority"/>
                    </span>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
          
          <div class="footer">
            <p>This XML Sitemap is generated by <strong>Bizpage Digital</strong> • 
            <a href="https://bizpage.github.io/id/" target="_blank" style="color:#4299e1;">Visit Website</a> • 
            <a href="https://bizpage.github.io/id/sitemap.xml" style="color:#4299e1;">View XML Source</a></p>
            <p>Total URLs: <strong><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/></strong> • 
            Last Generated: <xsl:value-of select="format-dateTime(current-dateTime(), '[D01]/[M01]/[Y0001] [H01]:[m01]')"/></p>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
