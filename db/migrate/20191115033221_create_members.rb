class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :nama
      t.string :nim
      t.string :fakultas

      t.timestamps
    end
  end
end
