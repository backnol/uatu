class TwUser < ActiveRecord::Base
  validates :screen_name, presence: true, uniqueness: true
  validates :name, presence: true
  validates :description, presence: true
  validates :profile_image_url, presence: true

  def self.new_from_screen_name screen_name
    twitter_user = TwClient.user(screen_name)

    new screen_name: twitter_user.screen_name,
        name: twitter_user.name,
        description: twitter_user.description,
        profile_image_url: twitter_user.profile_image_url
  end
end
