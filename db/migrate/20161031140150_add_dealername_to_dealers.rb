class AddDealernameToDealers < ActiveRecord::Migration[5.0]
  def change
    add_column :dealers, :name, :string
  end
end
