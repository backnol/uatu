require 'rails_helper'

RSpec.describe Paper, type: :model do
  describe '.new_from_url' do
    it 'returns new paper for url' do
      mocked_unfluff_response = {
        title: "Mars colony is thriving",
        favicon: "favicon.ico",
        description: "Economy, Government, Development doare going well",
        lang: "en",
        canonicalLink: "http://example.com",
        tags: [
          "Architecture",
          "Typography",
          "Concepts",
          "Politics",
          "National Security"
        ],
        image: "image.png",
        videos: [],
        text: "Mission to mars started with ...........",
        url: "www.newssite.com/mars-colony-thriving"
      }

      expect(Unfluffer).to receive(:unfluff)
        .once
        .with('www.ns.co/11')
        .and_return(mocked_unfluff_response)

      paper = Paper.new_from_url('www.ns.co/11')

      expect(paper.title).to eq mocked_unfluff_response[:title]
      expect(paper.favicon).to eq mocked_unfluff_response[:favicon]
      expect(paper.description).to eq mocked_unfluff_response[:description]
      expect(paper.lang).to eq mocked_unfluff_response[:lang]
      expect(paper.tags).to eq mocked_unfluff_response[:tags]
      expect(paper.image).to eq mocked_unfluff_response[:image]
      expect(paper.text).to eq mocked_unfluff_response[:text]
      expect(paper.url).to eq mocked_unfluff_response[:url]
    end
  end
end
