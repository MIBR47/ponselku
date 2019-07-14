class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
    	t.string :brand
      t.string :os
      t.string :chipset
      t.string :cpu
      t.string :gpu
      t.string :memory
      t.string :camera
      t.string :front_camera
      t.string :battrey
      t.timestamps
    end
  end
end
