class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.boolean :private
      t.string :title
      t.text :description
      t.boolean :favorit

      t.timestamps
    end
  end
end
