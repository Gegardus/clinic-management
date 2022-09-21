class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_one :profile
  has_one :category
end
