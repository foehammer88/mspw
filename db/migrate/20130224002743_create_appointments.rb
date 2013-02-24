class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :username
      t.datetime :date
      t.boolean :verified
      t.boolean :completed

      t.timestamps
    end
  end
end
