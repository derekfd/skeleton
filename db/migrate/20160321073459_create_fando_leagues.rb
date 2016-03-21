class CreateFandoLeagues < ActiveRecord::Migration
  def change
    create_table :fando_leagues do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.datetime :contest_date
      t.integer :max_user

      t.timestamps null: false
    end
    add_index :fando_leagues, :contest_date
    add_index :fando_leagues, :max_user
  end
end
