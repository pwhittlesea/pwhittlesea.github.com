source "https://rubygems.org"

# Jekyll Theme
gem "minimal-mistakes-jekyll", "~> 4.27.0"

gem "jekyll-titles-from-headings"
gem "jemoji"
gem "kramdown-parser-gfm"

# Pin until https://github.com/benbalter/jekyll-relative-links/issues/91 is fixed
gem "jekyll-relative-links", "~> 0.6.0"

# Pin until https://github.com/mmistakes/minimal-mistakes/issues/4054 is fixed
gem "jekyll-sass-converter", "~> 2.0"

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]
