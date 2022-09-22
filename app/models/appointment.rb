class Appointment < ApplicationRecord
  belongs_to :doctor, class_name: 'Doctor', foreign_key: 'doctor_id'
  belongs_to :patient
end
