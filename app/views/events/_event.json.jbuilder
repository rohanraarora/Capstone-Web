json.extract! event, :id, :title, :description, :from_datetime, :to_datetime, :ticket_url, :ticker_price, :venue_title, :venue_lat, :venue_long, :created_at, :updated_at
json.url event_url(event, format: :json)