class CreateCounts < ActiveRecord::Migration[6.0]
  def change
    create_table :counts do |t|
      t.date :date
      t.integer :prepared_number
      t.integer :handed_number
      t.integer :unused
      t.timestamps
    end
  end
end
