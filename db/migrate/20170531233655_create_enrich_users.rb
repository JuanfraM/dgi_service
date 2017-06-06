class CreateEnrichUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :enrich_users do |t|
      t.string :pais

      t.references :user
      t.timestamps
    end
  end
end
