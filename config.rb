# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# General Configuration
activate :directory_indexes

#
# Use webpack for assets
#
activate :external_pipeline,
  name: :webpack,
  command: build? ?
  "NODE_ENV=production ./node_modules/webpack/bin/webpack.js --bail -p" :
  "./node_modules/webpack/bin/webpack.js --watch -d --progress --color",
  source: ".tmp/dist",
  latency: 1

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

set :css_dir,    'assets/stylesheets'
set :js_dir,     'assets/javascripts'
set :images_dir, 'images'

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
#   activate :minify_css
#   activate :minify_javascript
  activate :asset_hash, ignore: [/\.jpg\Z/, /\.png\Z/]
end
