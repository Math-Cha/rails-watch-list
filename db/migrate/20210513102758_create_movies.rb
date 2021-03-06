class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.text :title
      t.string :overview
      t.string :poster_url
      t.decimal :rating

      t.timestamps
    end
  end
end
