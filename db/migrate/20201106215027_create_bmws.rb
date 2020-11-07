class CreateBmws < ActiveRecord::Migration[6.0]
  def change
    create_table :bmws do |t|
      t.string :name
      t.text :description
      t.integer :kilometers
       end
  end
end
