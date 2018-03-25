class User < ApplicationRecord

  def self.find_or_create(attributes)
    user = User.find_by(refresh_token: attributes[:refresh_token]) || User.new
    user.attributes = {
      oauth_token: attributes[:access_token],
      refresh_token: attributes[:refresh_token],
      expires_in: attributes[:expires_in]
    }
  end

end
