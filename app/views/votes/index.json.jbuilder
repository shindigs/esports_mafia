json.array!(@votes) do |vote|
  json.extract! vote, :player_name
  json.url vote_url(vote, format: :json)
end
