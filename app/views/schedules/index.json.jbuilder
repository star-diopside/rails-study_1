json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :scheduled_on, :description
  json.url schedule_url(schedule, format: :json)
end
