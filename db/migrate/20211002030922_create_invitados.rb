class CreateInvitados < ActiveRecord::Migration[6.1]
  def change
    create_table :invitados do |t|
      t.string :first_name
      t.string :last_name
      t.string :group
      t.string :menu
      t.integer :phone
      t.string :email
      t.boolean :isgoing

      t.timestamps
    end
  end
end
