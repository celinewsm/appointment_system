class CreateAppoints < ActiveRecord::Migration[5.0]
  def change
    create_table :appoints do |t|
      t.integer :doctor_id
      t.integer :user_id
      t.text :complaint
      t.string :speciality
      t.integer :date
      t.integer :time_slot

      t.timestamps
    end
  end
end
