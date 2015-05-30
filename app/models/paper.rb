class Paper < ActiveRecord::Base
  serialize :tags, Array

  validates :url, uniqueness: true, presence: true
  validates :title, presence: true
  validates :text, presence: true

  def self.new_from_url url
    data = Unfluffer::unfluff url
    
    data.slice!(:title, :text, :image, :videos, :tags, :lang, :description,
                :favicon, :url)

    data[:tags] = data[:tags].map do |t|
      t.strip
    end

    new data
  end
end
