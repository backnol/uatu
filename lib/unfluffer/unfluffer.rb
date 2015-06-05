require 'json'
require 'active_support/all'
require 'awesome_print'
module Unfluffer
  def self.unfluff(url)
    data = `node lib/unfluffer/scrape.js #{url}`
    JSON.parse(data).with_indifferent_access
  rescue Exception => e
    puts data
    raise e
  end
end

# Unfluffer.unfluff('http://www.theverge.com/2015/5/22/8643957/indycar-indy-500-crashes-two-seater-ride')
