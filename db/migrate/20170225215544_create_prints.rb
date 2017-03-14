class CreatePrints < ActiveRecord::Migration[5.0]
  def change
    create_table :prints do |t|
      t.text :venue
      t.text :location
      t.text :date
      t.integer :print_id

      t.timestamps
    end

    add_index :prints, :print_id
  end
end
