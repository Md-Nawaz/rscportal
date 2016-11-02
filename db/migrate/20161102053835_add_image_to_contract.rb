class AddImageToContract < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :image, :string
  end
end
