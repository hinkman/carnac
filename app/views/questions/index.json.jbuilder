json.array!(@questions) do |question|
  json.extract! question, :id, :simple_key, :simple_value
  json.url question_url(question, format: :json)
end
