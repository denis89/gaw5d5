class CreateTechnicians < ActiveRecord::Migration
  def change
    create_table :technicians do |t|
      t.string :date

      t.timestamps null: false
    end
  end
end
