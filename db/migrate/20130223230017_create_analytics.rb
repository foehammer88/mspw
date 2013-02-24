class CreateAnalytics < ActiveRecord::Migration
  def change
    create_table :analytics do |t|
      t.string :college
      t.integer :amount_student_used
      t.integer :amount_money
      t.integer :total_on_campus
      t.date :year

      t.timestamps
    end
  end
end
