class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :Brand
      t.string :Processor
      t.string :Description
      t.integer :Price

      t.timestamps
    end
  end
end
