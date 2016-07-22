class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :urlLong
      t.string :urlShort

      t.timestamps null: false
    end
  end
end
