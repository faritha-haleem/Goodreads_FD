# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += ['authors.css', 'bootstrap.css', 'js-image-slider.css', 'generic.css', 'js-image-slider.js', 'signup.js', 'star.js']
Rails.application.config.assets.precompile += %w( mybook.css )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
