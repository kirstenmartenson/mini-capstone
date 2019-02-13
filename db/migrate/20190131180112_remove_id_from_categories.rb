class RemoveIdFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :category_products, :product_id, :integer
    remove_column :category_products, :category_id, :integer
  end
end
