Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV["SPOTIFY_CLIENT"], ENV["SPOTIFY_SECRET"]
end
