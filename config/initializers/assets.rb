# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

Rails.application.config.assets.precompile += %w[
  bootstrap.min.js
  popper.js
  controllers/hello_controller.js
  controllers/index.js
  @hotwired--turbo-rails.js
  @hotwired--turbo.js
  @rails--actioncable--src.js

  default.css
  basic_header.css
  top.css
  animals/index.css
  animals/form.css
  animals/show.css
  animals/modal_master.css
]
