class ChangeCatsRentalRequestsToCatRentalRequests < ActiveRecord::Migration[5.2]
  def change
    rename_table :cats_rental_requests, :cat_rental_requests
  end
end
