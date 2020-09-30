class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :team
      t.string :position
      t.float :price
      t.string :image

      t.timestamps
    end
  end
end
