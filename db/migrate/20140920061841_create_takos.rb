class CreateTakos < ActiveRecord::Migration
  def change
    create_table :takos do |t|
      t.string :Tako
      t.string :name
      t.string :tako_msg

      t.timestamps
    end
  end
end
