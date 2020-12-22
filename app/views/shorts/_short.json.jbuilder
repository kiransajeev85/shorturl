json.extract! short, :id, :long_url, :short_url, :created_at, :updated_at
json.url short_url(short, format: :json)
