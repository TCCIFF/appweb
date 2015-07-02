json.array!(@requisitos) do |requisito|
  json.extract! requisito, :id, :siglaRequisito, :nomeRequisito, :descricaoRequisito, :tipoRequisito, :prioridade
  json.url requisito_url(requisito, format: :json)
end
