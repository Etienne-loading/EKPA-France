class CreateOrganismes < ActiveRecord::Migration[7.0]
  def change
    create_table :organismes do |t|
      t.string :nom

      t.timestamps
    end
  end
end
