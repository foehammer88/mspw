class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :name
      t.string :type
      t.decimal :amount
      t.string :requirements

      t.timestamps
    end
  end
end
