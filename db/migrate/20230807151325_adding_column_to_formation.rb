class AddingColumnToFormation < ActiveRecord::Migration[7.0]
  def change
    add_column :formations, :lieu, :string, default: "À distance"
  end
end
