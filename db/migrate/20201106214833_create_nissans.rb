class CreateNissans < ActiveRecord::Migration[6.0]
  def change
    create_table :nissans do |t|
      t.string :name
      t.text :description
      t.integer :kilometers
    end
  end
end
