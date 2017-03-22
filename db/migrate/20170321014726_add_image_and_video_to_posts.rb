class AddImageAndVideoToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :image, :string
    add_column :posts, :video, :string
  end
end
