class CreateIkas < ActiveRecord::Migration
  def change
    create_table :ikas do |t|
      t.references :user, index: true
      t.string :title
      t.string :description, limit: 500
      t.attachment :background

      t.timestamps
    end
  end
end
