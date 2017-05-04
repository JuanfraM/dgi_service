class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :numero_documento
      t.string :tipo_documento
      t.string :nombre
      t.string :apellido
      t.string :nombre_completo
      t.string :sexo
      t.string :email
      t.string :nacionalidad
      t.string :tel

      t.timestamps null: false
    end

    add_index  :users, :numero_documento, :unique => true
    add_index  :users, :apellido
  end
end
