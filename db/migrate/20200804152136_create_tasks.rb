class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :done
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
