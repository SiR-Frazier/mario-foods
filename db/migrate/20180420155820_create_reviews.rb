class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
        t.column :author, :string
        t.column :rating, :integer
        t.column :comment, :varchar
        t.column :product_id, :integer

        t.timestamps
    end
  end
end
