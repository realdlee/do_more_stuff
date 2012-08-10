class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :due_date
      t.boolean :completed
      t.integer :priority 

      t.timestamps
    end
  end
end
