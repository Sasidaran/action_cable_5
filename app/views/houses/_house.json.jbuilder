json.extract! house, :id, :address, :zipcode, :latitude, :longitude, :created_at, :updated_at
json.url house_url(house, format: :json)