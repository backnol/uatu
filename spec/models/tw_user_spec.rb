require 'rails_helper'

RSpec.describe TwUser, type: :model do
  it '.new_from_screen_name returns new TwUser' do
    twitter_user = Twitter::User.new({
      id: '123',
      name: "Bruce Wayne",
      screen_name: 'batman',
      description: 'description',
      profile_image_url: 'www.image.com/png',
      some_other_field: "Blah"
    })

    expect(TwClient).to receive(:user)
      .once
      .with('batman')
      .and_return(twitter_user)

    tw_user = TwUser.new_from_screen_name('batman')

    expect(tw_user.name).to eq twitter_user.name
    expect(tw_user.screen_name).to eq twitter_user.screen_name
    expect(tw_user.description).to eq twitter_user.description
    expect(tw_user.profile_image_url).to eq twitter_user.profile_image_url
  end
end