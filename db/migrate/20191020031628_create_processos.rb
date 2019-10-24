class CreateProcessos < ActiveRecord::Migration[5.1]
  def change
    create_table :processos do |t|
      t.string :cliente
      t.string :ex_adversa
      t.string :natureza
      t.string :assunto
      t.string :tipo_acao
      t.string :juizo
      t.string :num_processo
      t.string :ultima_movimentacao
      t.date :ultimo_contato_cliente
      t.date :contato_agendado
      t.string :adv_principal
      t.string :adv_assistente

      t.timestamps
    end
  end
end
