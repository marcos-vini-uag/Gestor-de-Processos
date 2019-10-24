class RemoveNomeFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :nome, :string
  end
end
