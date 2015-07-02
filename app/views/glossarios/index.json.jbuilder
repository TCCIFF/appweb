json.array!(@glossarios) do |glossario|
  json.extract! glossario, :id, :siglaGlossario, :descricaoGlossario
  json.url glossario_url(glossario, format: :json)
end
