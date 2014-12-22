class ChangeBodyDataType < ActiveRecord::Migration
  def up
   change_column :knowledges, :body, :text
  end

  def down
   change_column :knowledges, :body, :string
  end
end
