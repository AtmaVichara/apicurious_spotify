class SessionsController < ApplicationController

  def create

    grant = Base64.strict_encode64("#{ENV["SPOTIFY_CLIENT"]}:#{ENV["SPOTIFY_SECRET"]}")

    response = Faraday.post do |req|
      req.url("https://accounts.spotify.com/api/token")
      req.headers['Authorization'] = "Basic #{grant}"
      req.params['grant_type'] = 'authorization_code'
      req.params['code'] = params[:code]
      req.params['redirect_uri'] = "http://localhost:3000/auth/spotify"
    end

    parsed_response = JSON.parse(response.body)

    user = User.update_or_create(parsed_response)

    redirect dashboard_index_path
  end

end
