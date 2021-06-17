json.extract! iot_datum, :id, :temp, :hum, :created_at, :updated_at
json.url iot_datum_url(iot_datum, format: :json)
