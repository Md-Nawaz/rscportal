class CreateForwardlogistics < ActiveRecord::Migration[5.0]
  def change
    create_table :forwardlogistics do |t|
      t.string :oemcode
      t.string :factorycode
      t.string :batchcode
      t.bigint :noofunits
      t.string :prodid
      t.string :dealerid
      t.date :dateofship
      t.date :deliverydate

      t.timestamps
    end
    add_index :forwardlogistics, :prodid, unique: true
  end
end
