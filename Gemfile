source "https://rubygems.org"
gem "webrick"
gem "jekyll", "= 3.10.0"

gem "minimal-mistakes-jekyll", "= 4.27.0"

gem "jekyll-paginate"
gem "jekyll-sitemap"
gem "jekyll-gist"
gem "jekyll-feed"
gem "jekyll-include-cache"
# Don't upgrade until https://github.com/benbalter/jekyll-relative-links/issues/91 is fixed
gem "jekyll-relative-links", "= 0.6.1"
gem "jekyll-titles-from-headings"

# Plugins I might want to use in the future
# gem "jekyll-redirect-from"

gem "jemoji"
gem "kramdown-parser-gfm"

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]
