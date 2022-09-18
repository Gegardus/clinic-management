class AddNameToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :firstname, :string
    add_column :profiles, :lastname, :string
  end
end
