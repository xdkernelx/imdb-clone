class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :name, { limit: 128 }
      t.integer :category_id

      t.timestamps
    end
  end
end
