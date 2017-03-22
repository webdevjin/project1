class AddImageToForums < ActiveRecord::Migration[5.0]
  def change
    add_column :forums, :image, :string
  end
end
