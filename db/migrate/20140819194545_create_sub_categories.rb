class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string  :name,        null: false
      t.integer :category_id, null: false
      t.string  :description, null: false, default: ""

      t.timestamps
    end

    add_index :sub_categories, [:name, :category_id], unique: true
  end
end
