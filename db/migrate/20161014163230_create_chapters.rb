class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.integer :order
      t.integer :kind
      t.string :url

      t.timestamps null: false
    end
  end
end
