json.user do
  json.id               user.id
  json.ci               user.ci if params_required.include? 'ci'
  json.nombre           user.nombre if params_required.include? 'nombre'
  json.apellido         user.apellido if params_required.include? 'apellido'
  json.nombre_completo  user.nombre_completo if params_required.include? 'nombre_completo'
  json.sexo             user.sexo if params_required.include? 'sexo'
  json.nacionalidad     user.nacionalidad if params_required.include? 'nacionalidad'
  json.tel              user.tel if params_required.include? 'tel'
end
