class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.string :title
      t.string :ownername
      t.string :nameofretail
      t.string :addofretail
      t.string :adproof
      t.string :iproof
      t.bigint :contactno
      t.string :emailid

      t.timestamps
    end
  end
end
