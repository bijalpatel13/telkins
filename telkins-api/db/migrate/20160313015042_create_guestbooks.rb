class CreateGuestbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :guestbooks do |t|
      t.string :name, null: false
      t.string :email
      t.text :body, null: false
      t.string :artist
      t.string :song

      t.timestamps null: false
    end
  end
end
