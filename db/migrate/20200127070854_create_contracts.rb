class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.references :products, foreign_key:true, null:false
      t.decimal :revenue, null:false
      t.date :signed_on, null:false
      t.timestamps
    end
  end
end
