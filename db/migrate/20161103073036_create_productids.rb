class CreateProductids < ActiveRecord::Migration[5.0]
  def change
    create_table :productids do |t|
      t.string :prodid

      t.timestamps
    end
  end
end
