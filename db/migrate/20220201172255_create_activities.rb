class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :description
      t.integer :salesperson_id
      t_integer :contact_id
      t.timestamps
    end
  end
end
