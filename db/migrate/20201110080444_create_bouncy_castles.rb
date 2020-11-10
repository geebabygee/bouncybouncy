class CreateBouncyCastles < ActiveRecord::Migration[6.0]
  def change
    create_table :bouncy_castles do |t|
      t.string :name
      t.integer :rating

      t.timestamps
    end
  end
end
