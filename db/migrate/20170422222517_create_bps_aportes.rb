class CreateBpsAportes < ActiveRecord::Migration[5.0]
  def change
    create_table :bps_aportes do |t|
      t.integer :sueldo
      t.integer :jubilacion
      t.integer :fonasa

      t.references :bps_user
      t.timestamps null: false
    end
  end
end
