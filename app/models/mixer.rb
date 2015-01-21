class Mixer < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :mixes

  def self.find_or_create_from_auth_hash(auth_data)
    mixer = Mixer.where(uid: auth_data['uid']).first_or_create
    mixer.tap { |m| m.update_attributes name: auth_data["info"]["name"] }
  end

end
