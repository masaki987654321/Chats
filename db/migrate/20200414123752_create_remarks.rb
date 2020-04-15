class CreateRemarks < ActiveRecord::Migration[5.2]
  def change
    create_table :remarks do |t|
      t.string :text, nill: false, limit: 500
      t.string :ip, nill: false
      t.integer :room_id, nill: false

      t.timestamps
    end
  end
end
