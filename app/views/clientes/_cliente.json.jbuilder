json.extract! cliente, :id, :nome, :ativo, :nascimento, :cadastro, :altura, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
