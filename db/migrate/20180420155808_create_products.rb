class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :country_origin, :string
      t.column :price, :money

      t.timestamps
    end
  end
end
