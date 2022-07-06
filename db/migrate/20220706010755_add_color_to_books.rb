class AddColorToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :color, :string
  end
end
