class AddImageToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :image, :string
  end
end
