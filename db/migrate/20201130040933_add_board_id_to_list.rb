class AddBoardIdToList < ActiveRecord::Migration[6.0]
  def change
    add_reference :lists, :board
  end
end
