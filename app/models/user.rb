class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid

  def self.create_with_omniauth(auth)
	  create! do |user|
			user.uid         = auth['uid']
			user.provider    = auth['provider']
			user.name        = auth['info']['name']
			user.email       = auth['info']['email']
			user.blog_url    = auth['info']['urls']['Blog']
			user.profile_url = auth['info']['urls']['Github']
			user.api_url     = auth['extra']['raw_info']['url']
			user.bio         = auth['extra']['raw_info']['bio']
			user.login       = auth['extra']['raw_info']['login']
			user.avatar_url  = auth['extra']['raw_info']['avatar_url']
	  end
  end
end
