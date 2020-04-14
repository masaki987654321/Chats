class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name, nill: false , limit: 20
      t.string :ip, nill: false

      t.timestamps
    end
  end
end
