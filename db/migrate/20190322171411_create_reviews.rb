class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
      t.integer :points

      t.index [:user_id, :room_id], unique: true

      t.timestamps
    end
  end
end
