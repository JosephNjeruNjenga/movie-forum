class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :overview
      t.string :poster_path
      t.float :vote_average

      t.timestamps
    end
  end
end
