class CreateSnippets < ActiveRecord::Migration[5.0]
  def change
    create_table :snippets do |t|
      t.string :content
      t.integer :user_id
      t.integer :lab_id

      t.timestamps
    end
  end
end
