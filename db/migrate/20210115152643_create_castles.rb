class CreateCastles < ActiveRecord::Migration[6.0]
  def change
    create_table :castles do |t|
      t.string :name
      t.string :address
      t.string :owner_first_name
      t.string :owner_last_name

      t.timestamps
    end
  end
end
