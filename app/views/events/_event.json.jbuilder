json.extract! event, :id, :title, :description, :date, :holder, :relevant, :team, :created_at, :updated_at
json.url event_url(event, format: :json)
