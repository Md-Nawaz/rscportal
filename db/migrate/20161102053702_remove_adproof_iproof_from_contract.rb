class RemoveAdproofIproofFromContract < ActiveRecord::Migration[5.0]
  def change
    remove_column :contracts, :adproof, :string
    remove_column :contracts, :iproof, :string
  end
end
