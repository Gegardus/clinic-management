class AddProfileableToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_reference :profiles, :profileable, polymorphic: true, index: true
  end
end
