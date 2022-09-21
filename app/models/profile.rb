class Profile < ApplicationRecord 
  belongs_to :profileable, polymorphic: true   
  ROLES = %i[user patient doctor admin].freeze

end
