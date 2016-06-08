class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.boolean :priority
      t.date :time_due
      t.string :due_by

      t.timestamps null: false
    end
  end
end
