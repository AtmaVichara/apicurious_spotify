Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV["SPOTIFY_CLIENT"], ENV["SPOTIFY_SECRET"], scope: 'playlist-read-private user-read-private user-read-email user-top-read user-read-recently-played'
end
