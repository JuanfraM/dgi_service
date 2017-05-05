json.data do
  json.id               user.id
  json.numero_documento user.numero_documento
  json.tipo_documento   user.tipo_documento
  json.nombre           user.nombre
  json.apellido         user.apellido
  json.sexo             user.sexo
  json.email            user.email
  json.nacionalidad     user.nacionalidad
end
