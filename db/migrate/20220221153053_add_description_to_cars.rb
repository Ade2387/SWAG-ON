class AddDescriptionToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :description, :text
  end
end
