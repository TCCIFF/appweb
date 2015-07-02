json.array!(@diagramas) do |diagrama|
  json.extract! diagrama, :id, :nomeDiagrama, :tipoDiagrama, :arquivo
  json.url diagrama_url(diagrama, format: :json)
end
