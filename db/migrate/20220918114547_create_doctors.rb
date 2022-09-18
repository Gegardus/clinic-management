class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :firstname
      t.string :lastname
      t.string :category

      t.timestamps
    end
  end
end
