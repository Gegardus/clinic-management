class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :phone, uniqueness: true

  ROLES = %i[user patient doctor admin].freeze

  def is?(requested_role)
    role == requested_role.to_s
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
