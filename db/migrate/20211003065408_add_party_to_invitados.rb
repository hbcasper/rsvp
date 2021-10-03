class AddPartyToInvitados < ActiveRecord::Migration[6.1]
  def change
    add_reference :invitados, :party, foreign_key: true
  end
end
