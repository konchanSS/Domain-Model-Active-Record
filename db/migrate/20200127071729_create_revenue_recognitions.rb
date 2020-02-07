class CreateRevenueRecognitions < ActiveRecord::Migration[5.1]
  def change
    create_table :revenue_recognitions, id: false do |t|
      t.decimal :amount, null:false
      t.references :contracts, foreign_key:true, null:false
      t.date :recognized_on, null:false
      t.timestamps
    end
  end
end
