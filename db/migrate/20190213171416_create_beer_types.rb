class CreateBeerTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_types do |t|
      t.string :title, null: false
      t.text :text, null: false

      t.timestamps
    end
  end
end
