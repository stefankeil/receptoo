json.array!(@comments) do |comment|
  json.extract! comment, :id, :user, :comment_text
  json.url comment_url(comment, format: :json)
end
