json.array!(@projetos) do |projeto|
  json.extract! projeto, :id, :nomeProjeto, :resumo
  json.url projeto_url(projeto, format: :json)
end
