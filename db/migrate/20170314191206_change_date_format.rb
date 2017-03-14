class ChangeDateFormat < ActiveRecord::Migration[5.0]
  def change
    change_column(:prints, :date, :date)
  end
end
