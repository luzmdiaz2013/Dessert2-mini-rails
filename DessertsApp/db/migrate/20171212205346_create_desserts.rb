class CreateDesserts < ActiveRecord::Migration[5.1]
  def change
    create_table :desserts do |t|
      t.string :name
      t.string :flavor

      t.timestamps
    end
  end
end
