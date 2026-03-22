# Glass Darkly

Hugo site deployed at glassdarkly.dev. Custom theme in themes/glass/.

## Build & Preview
- `hugo server -D` — local dev server with drafts
- `hugo` — production build to public/

## Structure
- content/posts/ — published writing
- layouts/ — template overrides (RSS, 404)
- themes/glass/ — custom theme (styles, base layout, favicon)
- static/ — standalone pages (encounter-fields, nodes-without-edges), redirects, RSS stylesheet

## Conventions
- Hosting: Cloudflare Pages (see static/_redirects for www→apex redirect)
- Favicon: SVG for browsers (themes/glass/static/favicon.svg), PNG for RSS (static/favicon.png)
- No retrospective editing of published posts — see EDITORIAL.md
- goldmark unsafe rendering is OFF (hugo.toml) — no raw HTML in markdown
