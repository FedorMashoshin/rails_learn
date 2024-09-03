class CreateProductcds < ActiveRecord::Migration[7.2]
  def change
    create_table :productcds do |t|
      t.timestamps
    end
  end
end
