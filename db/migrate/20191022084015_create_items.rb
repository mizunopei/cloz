class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text         :name   null:false
      t.text         :image
      t.references   :category, foreign_key:true
      t.references   :color, foreign_key:true
      t.timestamps
    end
  end
end
