class CreateJoins < ActiveRecord::Migration[5.2]
  def change
    create_table :joins do |t|
      t.integer :dish_id
      t.integer :tag_id
    end
  end
end
