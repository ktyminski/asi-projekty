json.array!(@motocycles) do |motocycle|
  json.extract! motocycle, :id, :Brand, :Model, :Year, :Capacity, :Horsepower
  json.url motocycle_url(motocycle, format: :json)
end
