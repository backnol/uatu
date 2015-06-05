class ImportPapersFromTweets
  def do_import
    TwUser.all.each do |tw_user|
      
      TwClient.user_timeline(tw_user.screen_name).each do |tweet|
        url = tweet.urls.first &&
                tweet.urls.first.expanded_url.to_s
        if url && url.exclude?('https://twitter.com/')
          begin
            Paper.new_from_url(url).save
          rescue Exception => e
            puts "Failed to store paper"
            puts "Twitter User: " + tw_user.screen_name
            puts "Tweet id: " + tweet.id.to_s
            puts "url: " + url 
          end
        end
      end
    end
  end
end