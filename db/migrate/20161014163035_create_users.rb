class CreateUsers < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :slug

      t.timestamps null: false
    end
  end
end
