json.array!(@documents) do |document|
  json.extract! document, :id, :type, :url, :md5, :password, :title, :description, :access_type, :user_id
  json.url document_url(document, format: :json)
end
