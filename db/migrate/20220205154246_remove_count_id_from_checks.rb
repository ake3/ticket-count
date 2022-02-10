class RemoveCountIdFromChecks < ActiveRecord::Migration[6.0]
  def change
    remove_reference :checks, :count
  end
end
