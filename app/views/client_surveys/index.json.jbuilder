json.array!(@client_surveys) do |client_survey|
  json.extract! client_survey, 
  json.url client_survey_url(client_survey, format: :json)
end
