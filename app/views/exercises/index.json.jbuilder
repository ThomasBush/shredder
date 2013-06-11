json.array!(@exercises) do |exercise|
  json.extract! exercise, :name, :set, :rep
  json.url exercise_url(exercise, format: :json)
end