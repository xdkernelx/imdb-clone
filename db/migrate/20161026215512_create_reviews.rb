class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title, { limit: 64 }
      t.string :body
      t.integer :rating
      t.integer :reviewer_id
      t.integer :film_id

      t.timestamps
    end
  end
end
