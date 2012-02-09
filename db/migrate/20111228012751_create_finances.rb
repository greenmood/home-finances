class CreateFinances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
      t.datetime :time
      t.integer :money
      t.text :comment

      t.timestamps
    end
  end
end
