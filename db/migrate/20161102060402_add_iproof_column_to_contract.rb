class AddIproofColumnToContract < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :iproof, :string
  end
end
