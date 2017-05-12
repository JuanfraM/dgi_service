json.data do
  json.id               user.id
  json.numero_documento user.numero_documento
  json.tipo_documento   user.tipo_documento
  json.nombre           user.nombre
  json.apellido         user.apellido
  json.nombre_completo  user.nombre_completo
  json.sexo             user.sexo
  json.nacionalidad     user.nacionalidad
  json.email            user.email
  json.tel              user.tel
  json.direccion        user.direccion
  json.residente        user.residente
end
