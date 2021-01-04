class CreateCatsRentalRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :cats_rental_requests do |t|
      t.integer :cat_id, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :status, default: 'PENDING', null: false
    end

    add_index :cats_rental_requests, :cat_id
  end
end
