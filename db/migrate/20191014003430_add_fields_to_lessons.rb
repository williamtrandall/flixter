class AddFieldsToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :subtitle, :string
  end
end
