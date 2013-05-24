class User < ActiveRecord::Base
  attr_accessible :provider, :uid, :email, :allowed
  def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
			user.email = auth["info"]["email"]
			user.allowed = true;
			user.save!
    end
  end
end
