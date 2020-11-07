class CreateHyundais < ActiveRecord::Migration[6.0]
  def change
    create_table :hyundais do |t|
      t.string :name
      t.text :description
      t.integer :kilometers
    end
  end
end
