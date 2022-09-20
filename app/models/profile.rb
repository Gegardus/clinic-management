class Profile < ApplicationRecord
  # belongs_to :doctor
  # belongs_to :patient
  # belongs_to :admin
  belongs_to :profileable, polymorphic: true

  def role
    profile.profile_type.downcase   # 'admin', 'doctor' or 'patient'
 end
end
