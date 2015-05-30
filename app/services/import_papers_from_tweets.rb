class ImportPapersFromTweets
  def do_import
    TwUser.all.each do |tw_user|
      TwClient.user_timeline(tw_user.screen_name).each do |tweet|
        url = tweet.urls.first &&
                tweet.urls.first.expanded_url.to_s
        if url && url.exclude?('https://twitter.com/')
          Paper.new_from_url(url).save
        end
      end
    end
  end
end