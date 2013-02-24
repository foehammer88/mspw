class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :username
      t.integer :points
      t.integer :level
      t.string :college
      t.integer :number_applications
      t.date :date
      t.decimal :money

      t.timestamps
    end
  end
end
