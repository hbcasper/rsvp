class Invitado < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true, length: { minimum: 2 }
    belongs_to :party
end
