class MakeChangesToBooks < ActiveRecord::Migration[7.0]
  def change

    # Renaming a column in the database - table/old column name/new column name 
    rename_column :books, :name, :title

    # Change column type - table/column/new type
    change_column :books, :description, :text

    # Change price column from int to decimal- table/column/new_type/modifiers
    change_column :books, :price, :decimal, precision: 5, scale: 2 

    # Remove a column - table/column/type
    remove_column :books, :isbn, :string 

    # Example- change string to value to decimal
    change_column :books, :price, "numeric USING CAST(price AS numeric)"
    change_column :books, :price, :decimal, precision: 9, scale: 2


  end
end
