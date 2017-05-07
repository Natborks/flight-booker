class CreateBookingsPassengers < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings_passengers do |t|
      t.references :booking, foreign_key: true
      t.references :passenger, foreign_key: true

      t.timestamps
    end
  end
end
