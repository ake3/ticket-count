class AddCheckDateToChecks < ActiveRecord::Migration[6.0]
  def change
    add_column :checks, :check_date, :date
  end
end
