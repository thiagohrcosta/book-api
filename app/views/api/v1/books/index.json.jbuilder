json.array! @books do |book|
  json.extract! book, :title, :author, :publisher, :genre
end
