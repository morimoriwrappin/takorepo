class CreateTakos < ActiveRecord::Migration
  def change
    create_table :takos do |t|
      t.string :name
      t.string :msg

      t.timestamps
    end
  end
end
