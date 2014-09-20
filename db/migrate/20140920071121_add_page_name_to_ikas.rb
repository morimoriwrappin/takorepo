class AddPageNameToIkas < ActiveRecord::Migration
  def change
    add_column :ikas, :page_name, :string, after: 'user_id'
  end
end
