require 'rails_helper'

describe "ImpoertPapersFromTweets" do
  it '#do_import imports papers from tweets' do
    tw_user = FactoryGirl.create(:tw_user)
    expect(TwUser).to receive(:all)
      .once
      .and_return([tw_user])

    tweet =
      Hashie::Mash.new(
        urls: [Hashie::Mash.new(expanded_url: 'http://on.mktw.net/1A48Vn0')]
      )

    expect(TwClient).to receive(:user_timeline)
      .once
      .with('backnol')
      .and_return([tweet])

    paper = FactoryGirl.build(:paper)

    expect(Paper).to receive(:new_from_url)
      .once
      .with('http://on.mktw.net/1A48Vn0')
      .and_return(paper)

    expect {
      ImportPapersFromTweets.new.do_import
    }.to change { Paper.count }.by 1
  end
end
