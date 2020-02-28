class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    drop_table :boards
    create_table :boards do |t|
      t.string :name
      t.string :title
      t.text :comment

      t.timestamps
    end
  end
end
