class CreateBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :badges do |t|
      t.integer :performance_buzz
      t.integer :media_buzz
      t.integer :capital_appreciation
      t.integer :prime_time
      t.integer :twilight_years
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
