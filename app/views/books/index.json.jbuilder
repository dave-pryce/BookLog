json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :descritpion
  json.url book_url(book, format: :json)
end
