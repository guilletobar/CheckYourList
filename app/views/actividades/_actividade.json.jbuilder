json.extract! actividade, :id, :nombre, :descripcion, :fecha, :tipo_actividad, :created_at, :updated_at
json.url actividade_url(actividade, format: :json)
