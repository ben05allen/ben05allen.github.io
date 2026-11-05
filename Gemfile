source "https://rubygems.org"

# Jekyll 3.10 / 4.x compatible plugins only, and only ones on the GitHub Pages
# allow-list — the site is built by GitHub Pages' built-in Jekyll build, so no
# custom plugins or non-whitelisted gems can be used in production.
gem "jekyll", "~> 4.3"

group :jekyll_plugins do
  gem "jekyll-seo-tag"
  gem "jekyll-sitemap"
  gem "jekyll-feed"
end

# Faster file watching on Linux/macOS; harmless if unused.
gem "webrick", "~> 1.8"
