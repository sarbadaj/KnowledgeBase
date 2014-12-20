class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
