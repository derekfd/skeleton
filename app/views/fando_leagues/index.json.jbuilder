json.array!(@fando_leagues) do |fando_league|
  json.extract! fando_league, :id, :name, :user_id, :contest_date, :max_user
  json.url fando_league_url(fando_league, format: :json)
end
