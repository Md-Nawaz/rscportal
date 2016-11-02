class AddNameCodeToOem < ActiveRecord::Migration[5.0]
  def change
    add_column :oems, :name, :string
    add_column :oems, :oemcode, :string
  end
end
