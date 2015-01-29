json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :cpf, :email, :telefone, :endereço
  json.url cliente_url(cliente, format: :json)
end
