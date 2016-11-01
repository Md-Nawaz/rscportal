class CreatePayrolls < ActiveRecord::Migration[5.0]
  def change
    create_table :payrolls do |t|
      t.string :custname
      t.string :manufacturer
      t.string :prodid
      t.float :price
      t.date :dateofsale

      t.timestamps
    end
    add_index :payrolls, :prodid, unique: true
  end
end
