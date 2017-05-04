json.data do
  json.id                 aporte.id
  json.nombre_usuario     aporte.bps_user.nombre
  json.apellido_usuario   aporte.bps_user.apellido
  json.sueldo             aporte.sueldo
  json.jubilacion         aporte.jubilacion
  json.fonasa             aporte.fonasa
end
