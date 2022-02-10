class AddReferencesToCounts < ActiveRecord::Migration[6.0]
  def change
    add_reference :counts, :user, null: false, foreign_key: true
  end
end
