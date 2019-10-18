json.extract! cliente, :id, :nombre, :apellido_paterno, :apellido_materno, :rut, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
