page "/blog_feed.xml", layout: false

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Use the RedCarpet Markdown engine
set :markdown_engine, :redcarpet
set :markdown,
    :fenced_code_blocks => true,
    :with_toc_data => true

# Enable the blog and set the time zone so that post times appear
# correctly.
Time.zone = "America/Los_Angeles"

activate :blog do |b|
  b.layout = "blog_post"
  b.permalink = ":title.html"
  b.prefix = "blog"
end

# Build-specific configuration
configure :build do
  activate :asset_hash
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
end
