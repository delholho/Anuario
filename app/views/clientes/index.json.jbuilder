json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, : nomeCompleto, :cidade, :estado, :email, :descricao, :login, :senha, :foto
  json.url cliente_url(cliente, format: :json)
end
