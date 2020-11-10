class AddAddressToBouncyCastles < ActiveRecord::Migration[6.0]
  def change
    add_column :bouncy_castles, :address, :string
  end
end
