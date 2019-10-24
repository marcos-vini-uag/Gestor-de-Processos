class CreateAdvogados < ActiveRecord::Migration[5.1]
  def change
    create_table :advogados do |t|
      t.string :nome
      t.string :email
      t.string :n_OAB

      t.timestamps
    end
  end
end
