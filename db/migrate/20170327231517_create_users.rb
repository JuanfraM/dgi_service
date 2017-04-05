class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :ci
      t.string :nombre
      t.string :apellido
      t.string :nombre_completo
      t.string :sexo
      t.string :nacionalidad
      t.string :tel

      t.timestamps null: false
    end

    add_index  :users, :ci, :unique => true
    add_index  :users, :apellido
  end
end
