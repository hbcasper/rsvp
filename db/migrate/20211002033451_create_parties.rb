class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.string :name
      t.boolean :invite_sent
      t.integer :people_invited
      t.integer :people_going

      t.timestamps
    end
  end
end
