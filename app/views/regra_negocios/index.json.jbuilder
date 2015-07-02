json.array!(@regra_negocios) do |regra_negocio|
  json.extract! regra_negocio, :id, :siglaRegra, :nomeRegra, :descricaoRegra
  json.url regra_negocio_url(regra_negocio, format: :json)
end
