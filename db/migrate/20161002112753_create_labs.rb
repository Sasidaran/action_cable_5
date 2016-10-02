class CreateLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :labs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
