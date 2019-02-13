class ChangeDataTypeInSupplierId < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :supplier_id, "numeric USING CAST(price AS numeric)"
    change_column :products, :supplier_id, :integer
  end
end
