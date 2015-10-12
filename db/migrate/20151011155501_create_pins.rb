class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title, null: false
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end
