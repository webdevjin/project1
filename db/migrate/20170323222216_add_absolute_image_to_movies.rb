class AddAbsoluteImageToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :absolute_image, :string
  end
end
