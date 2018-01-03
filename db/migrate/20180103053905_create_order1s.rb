class CreateOrder1s < ActiveRecord::Migration[5.0]
  def change
    create_table :order1s do |t|
      t.date :date_of_delivery
      t.date :est_date_of_delivery
      t.string :order_description
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
