class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :date
      t.integer :phoneno

      t.timestamps null: false
    end
  end
end
