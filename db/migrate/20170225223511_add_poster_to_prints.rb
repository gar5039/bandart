class AddPosterToPrints < ActiveRecord::Migration[5.0]
  def change
    add_column :prints, :poster, :string
  end
end
