class Admin < User
  has_one :profile, as: :profileable
end
