<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title><xsl:value-of select="/rss/channel/title"/> — RSS Feed</title>
        <style>
          * { margin: 0; padding: 0; box-sizing: border-box; }
          body {
            font-family: Georgia, serif;
            background: #111;
            color: #ccc;
            line-height: 1.7;
            max-width: 38rem;
            margin: 0 auto;
            padding: 3rem 1.5rem;
            -webkit-font-smoothing: antialiased;
          }
          .feed-header { margin-bottom: 2.5rem; }
          .feed-title {
            font-size: 1rem;
            color: #999;
            font-weight: normal;
            margin-bottom: 0.5rem;
          }
          .feed-description {
            color: #999;
            font-style: italic;
          }
          .feed-note {
            font-size: 0.85rem;
            color: #8a8a8a;
            margin-top: 1rem;
            padding: 1rem;
            background: #1a1a1a;
            border-radius: 4px;
          }
          .feed-note code {
            color: #999;
          }
          .post-list { display: flex; flex-direction: column; gap: 2rem; margin-top: 2rem; }
          .post-summary time {
            font-size: 0.8rem;
            color: #999;
            font-family: 'IBM Plex Mono', Consolas, monospace;
          }
          .post-summary h2 {
            font-size: 1.2rem;
            font-weight: normal;
            color: #e0e0e0;
            line-height: 1.3;
            margin-top: 0.2rem;
          }
          .post-summary h2 a {
            color: #e0e0e0;
            text-decoration: none;
          }
          .post-summary h2 a:hover { color: #ccc; }
        </style>
      </head>
      <body>
        <div class="feed-header">
          <h1 class="feed-title"><xsl:value-of select="/rss/channel/title"/></h1>
          <p class="feed-description"><xsl:value-of select="/rss/channel/description"/></p>
          <div class="feed-note">
            This is an RSS feed. Copy the URL into your RSS reader to subscribe.
          </div>
        </div>
        <div class="post-list">
          <xsl:for-each select="/rss/channel/item">
            <div class="post-summary">
              <time><xsl:value-of select="pubDate"/></time>
              <h2>
                <a>
                  <xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
                  <xsl:value-of select="title"/>
                </a>
              </h2>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
