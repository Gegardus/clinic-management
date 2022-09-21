class RemoveReferencesFromProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_reference :profiles, :doctor, null: false, foreign_key: true
    remove_reference :profiles, :patient, null: false, foreign_key: true
    remove_reference :profiles, :admin, null: false, foreign_key: true
  end
end
