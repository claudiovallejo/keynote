###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Slides default layout
page "/slide.html", layout: :main

# Slide Proxies
data.slides.each do |id, slide|
  proxy "/#{slide.title.parameterize}/index.html", "/slide.html", :locals => { :slide => slide }, :ignore => true
end

# General configuration

# Activate directory index
activate :directory_indexes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
end
