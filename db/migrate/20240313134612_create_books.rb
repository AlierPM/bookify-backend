class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.string :image
      t.decimal :renting_fee

      t.timestamps
    end
  end
end
