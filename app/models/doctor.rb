class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments

  has_one :profile, :as => :profileable

  has_one :category
end
