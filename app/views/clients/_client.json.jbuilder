json.extract! client, :id, :rut, :nombre, :region, :comuna, :direccion, :correo, :telefono, :created_at, :updated_at
json.url client_url(client, format: :json)
