class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.integer :user_id, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :gender, null: false
      t.datetime :date_of_birth
      t.datetime :date_of_death
      t.timestamps null: false
    end
  end
end
