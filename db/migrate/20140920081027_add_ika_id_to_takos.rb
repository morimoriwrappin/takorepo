class AddIkaIdToTakos < ActiveRecord::Migration
  def change
    add_reference :takos, :ika, index: true
  end
end
