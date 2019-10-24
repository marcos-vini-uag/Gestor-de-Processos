json.extract! processo, :id, :cliente, :ex_adversa, :natureza, :assunto, :tipo_acao, :juizo, :num_processo, :ultima_movimentacao, :ultimo_contato_cliente, :contato_agendado, :adv_principal, :adv_assistente, :created_at, :updated_at
json.url processo_url(processo, format: :json)
