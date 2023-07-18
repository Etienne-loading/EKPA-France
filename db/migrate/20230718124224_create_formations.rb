class CreateFormations < ActiveRecord::Migration[7.0]
  def change
    create_table :formations do |t|
      t.string :title
      t.text :description
      t.integer :duree
      t.string :periode
      t.string :code_rncp
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
