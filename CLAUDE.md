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
- Hosting: Cloudflare Pages; www→apex redirect is a Cloudflare dashboard rule (Pages `_redirects` cannot match hostnames — do not re-add the file)
- Pages build pins HUGO_VERSION env var; local Hugo is 0.164+ (config uses `locale`, templates use `.Site.Language.Lang`)
- Favicon: SVG for browsers (themes/glass/static/favicon.svg), PNG for RSS (static/favicon.png), ICO + apple-touch-icon in static/ for legacy agents
- p5.js is shared at static/js/p5.min.js (art pages reference it absolutely — don't duplicate per page)
- No retrospective editing of published posts — see EDITORIAL.md
- goldmark unsafe rendering is OFF (hugo.toml) — no raw HTML in markdown
