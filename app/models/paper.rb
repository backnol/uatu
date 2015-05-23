class Paper < ActiveRecord::Base
  serialize :tags, Array

  def self.new_from_url url
    data = Unfluffer::unfluff(url)

    data.delete(:canonicalLink)

    data[:tags] = data[:tags].map do |t|
      t.strip
    end

    self.new(data)
  end
end
