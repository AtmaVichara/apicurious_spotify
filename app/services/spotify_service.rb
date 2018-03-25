class SpotifyService

  def initialize(user)
    @token         = user.oauth_token
    @refresh_token = user.refresh_token
    @expiry        = user.expires_in
  end


  private

    def get_url(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end

    def headers
      {
        'Authorization' => "Bearer #{@token}"
      }
    end

    def conn
      Faraday.new(url: "https://api.spotify.com", headers: headers)
    end

end
