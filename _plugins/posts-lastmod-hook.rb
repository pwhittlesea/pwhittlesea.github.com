#!/usr/bin/env ruby
#
# Check for changed docs
Jekyll::Hooks.register :documents, :post_init do |doc|
  commit_num = `git rev-list --count HEAD "#{ doc.path }"`
  if commit_num.to_i > 1
    lastmod_date = `git log -1 --pretty="%ad" --date=iso "#{ doc.path }"`
    doc.data['last_modified_at'] = lastmod_date.strip
  end
end
