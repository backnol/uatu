require 'json'
require 'active_support/all'
module Unfluffer
  def self.unfluff(url)
    JSON.parse(`node lib/unfluffer/scrape.js #{url}`).with_indifferent_access
  end
end

# Unfluffer.unfluff('http://www.theverge.com/2015/5/22/8643957/indycar-indy-500-crashes-two-seater-ride')
