class User < ApplicationRecord

  def self.update_or_create(oauth_info)
    user = User.find_by(name: oauth_info[:info][:name]) || User.new
    user.attributes = {
      oauth_token: oauth_info[:credentials][:token],
      refresh_token: oauth_info[:credentials][:refresh_token],
      expires_in: (Time.now + 3600.seconds),
      name: oauth_info[:info][:name]
    }
    user.save!
    user
  end

  def expired?
    Time.now == expires_in
  end

end
