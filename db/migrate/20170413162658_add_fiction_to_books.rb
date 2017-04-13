class AddFictionToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :fiction, :string
  end
end
