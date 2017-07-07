class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :individual_id_1, null: false
      t.integer :individual_id_2, null: false
      t.integer :relation, null: false
      t.timestamps null: false
    end
  end
end
