class CreateSoups < ActiveRecord::Migration
  def change
    create_table :soups do |t|
      t.string :name
      t.boolean :featured
      t.references :category, index: true

      t.timestamps
    end
  end
end
