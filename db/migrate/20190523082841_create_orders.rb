class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.float :total
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
