class AddColumnToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :category_id, :integer
    add_column :blogs, :title, :string
  end
end
