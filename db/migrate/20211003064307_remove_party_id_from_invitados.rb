class RemovePartyIdFromInvitados < ActiveRecord::Migration[6.1]
  def change
    remove_column :invitados, :party_id
  end
end
