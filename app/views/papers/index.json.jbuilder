json.array!(@papers) do |paper|
  json.extract! paper, :id, :title, :text, :image, :videos, :tags, :lang, :description, :favicon, :url
  json.url paper_url(paper, format: :json)
end
