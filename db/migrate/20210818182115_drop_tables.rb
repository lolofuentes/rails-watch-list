class DropTables < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookmarks, :movie
    remove_reference :bookmarks, :list
    drop_table :lists
    drop_table :movies
    drop_table :bookmarks
  end
end
