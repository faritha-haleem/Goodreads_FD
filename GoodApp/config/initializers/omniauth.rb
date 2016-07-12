OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '472243239087-pmascakiigvbrncdpe8ofteu7ver214j.apps.googleusercontent.com', 'SZepueX_47K48LSoCEvQiQIy', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end