class AddTitlesToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :title, :string
  end
end
