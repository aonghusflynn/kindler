json.array!(@krindles) do |krindle|
  json.extract! krindle, 
  json.url krindle_url(krindle, format: :json)
end