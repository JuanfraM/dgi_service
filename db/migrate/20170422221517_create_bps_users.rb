class CreateBpsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :bps_users do |t|
      t.integer :numero_documento
      t.string :tipo_documento
      t.string :nombre
      t.string :apellido
      t.string :sexo
      t.string :email
      t.string :nacionalidad
      t.string :ano_de_alta
      t.string :afap

      t.timestamps null: false
    end

    add_index  :bps_users, :numero_documento, :unique => true
  end
end
