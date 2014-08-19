class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :user_id,     null: false
      t.string  :name,        null: false
      t.integer :io,          null: false, default: 0
      t.string  :description, null: false, default: ""

      t.timestamps
    end

    add_index :categories, [:user_id, :name]
  end
end
