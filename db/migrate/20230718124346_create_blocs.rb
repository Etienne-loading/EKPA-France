class CreateBlocs < ActiveRecord::Migration[7.0]
  def change
    create_table :blocs do |t|
      t.string :title
      t.text :description
      t.references :formation, null: false, foreign_key: true
      t.timestamps
    end
  end
end
