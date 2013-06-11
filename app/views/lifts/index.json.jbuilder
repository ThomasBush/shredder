json.array!(@lifts) do |lift|
  json.extract! lift, :reps, :weight
  json.url lift_url(lift, format: :json)
end