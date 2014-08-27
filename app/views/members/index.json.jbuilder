json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :last_name, :avatar, :nickname, :jersey_number, :member_type
  json.url member_url(member, format: :json)
end
