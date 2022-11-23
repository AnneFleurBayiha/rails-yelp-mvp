class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :review
      t.text :content
      t.integer :rating
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
