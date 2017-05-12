json.data do
  json.id               user.id
  json.numero_documento user.numero_documento
  json.tipo_documento   user.tipo_documento
  json.nombre           user.nombre
  json.apellido         user.apellido
  json.sexo             user.sexo
  json.email            user.email
  json.nacionalidad     user.nacionalidad
  json.ano_de_alta      user.ano_de_alta
  json.afap             user.afap
end
