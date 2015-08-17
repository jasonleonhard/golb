json.array!(@comments) do |comment|
  json.extract! comment, :id, :com, :body
  json.url comment_url(comment, format: :json)
end
