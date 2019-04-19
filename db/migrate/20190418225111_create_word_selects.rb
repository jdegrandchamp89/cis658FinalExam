class CreateWordSelects < ActiveRecord::Migration[5.2]
  def change
    create_table :word_selects do |t|
      t.string :noun1
      t.string :noun2
      t.string :noun3
      t.string :place1
      t.string :place2
      t.string :verb1
      t.string :verb2
      t.string :verb3
      t.string :string
      t.string :adjective1
      t.string :adjective2
      t.string :adjective3

      t.timestamps
    end
  end
end
