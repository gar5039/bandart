class ChangeDateAddArtist < ActiveRecord::Migration[5.0]
  def change
    remove_column(:prints, :date)
    change_column(:prints, :venue, :string)
    change_column(:prints, :location, :string)
    add_column(:prints, :artist, :string)
    add_column(:prints, :date, :datetime)
    remove_column(:prints, :print_id)

    add_index(:prints, :date)
    add_index(:prints, :venue)
    add_index(:prints, :location)
    add_index(:prints, :artist)
  end
end
