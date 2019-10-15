class RemoveTitreFromSection < ActiveRecord::Migration[5.2]
  def change
    remove_column :sections, :title, :string
  end
end
