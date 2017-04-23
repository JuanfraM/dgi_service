class CreateBpsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :bps_users do |t|
      t.integer :ci
      t.string :nombre
      t.string :apellido
      t.string :sexo
      t.string :nacionalidad

      t.timestamps null: false
    end

    add_index  :bps_users, :ci, :unique => true
  end
end
