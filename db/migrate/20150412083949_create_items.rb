class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.integer :position, default: 1

      t.timestamps null: false
    end
  end
end
