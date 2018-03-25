module OmniauthHelper

  def stub_omniauth
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:spotify] = OmniAuth::AuthHash.new({"provider"=>"spotify",
 "uid"=>"jmrj222",
 "info"=>
  {"name"=>"jmrj222",
   "nickname"=>"jmrj222",
   "email"=>"jmrjobes@gmail.com",
   "urls"=>{"spotify"=>"https://open.spotify.com/user/jmrj222"},
   "image"=>nil,
   "birthdate"=>nil,
   "country_code"=>"US",
   "product"=>"premium",
   "follower_count"=>3},
 "credentials"=>
  {"token"=>
    "12345",
   "refresh_token"=>
    "123445",
   "expires_at"=>1522001748,
   "expires"=>true},
 "extra"=>
  {"raw_info"=>
    {"country"=>"US",
     "display_name"=>nil,
     "email"=>"jmrjobes@gmail.com",
     "external_urls"=>{"spotify"=>"https://open.spotify.com/user/jmrj222"},
     "followers"=>{"href"=>nil, "total"=>3},
     "href"=>"https://api.spotify.com/v1/users/jmrj222",
     "id"=>"jmrj222",
     "images"=>[],
     "product"=>"premium",
     "type"=>"user",
     "uri"=>"spotify:user:jmrj222"}}})
  end

end
