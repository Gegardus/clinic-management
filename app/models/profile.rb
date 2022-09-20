class Profile < ApplicationRecord
  # belongs_to :doctor
  # belongs_to :patient
  # belongs_to :admin
  belongs_to :profileable, polymorphic: true 
end
