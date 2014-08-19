class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.integer :user_id,     null: false
      t.integer :category_id, null: false
      t.integer :amount,      null: false
      t.integer :io,          null: false, default: 0
      t.date    :payday,      null: false

      t.timestamps
    end
  end
end
