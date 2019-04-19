class RemoveStringFromWordSelect < ActiveRecord::Migration[5.2]
  def change
    remove_column :word_selects, :string, :string
  end
end
