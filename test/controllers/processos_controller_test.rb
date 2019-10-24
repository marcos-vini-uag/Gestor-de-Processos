require 'test_helper'

class ProcessosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @processo = processos(:one)
  end

  test "should get index" do
    get processos_url
    assert_response :success
  end

  test "should get new" do
    get new_processo_url
    assert_response :success
  end

  test "should create processo" do
    assert_difference('Processo.count') do
      post processos_url, params: { processo: { adv_assistente: @processo.adv_assistente, adv_principal: @processo.adv_principal, assunto: @processo.assunto, cliente: @processo.cliente, contato_agendado: @processo.contato_agendado, ex_adversa: @processo.ex_adversa, juizo: @processo.juizo, natureza: @processo.natureza, num_processo: @processo.num_processo, tipo_acao: @processo.tipo_acao, ultima_movimentacao: @processo.ultima_movimentacao, ultimo_contato_cliente: @processo.ultimo_contato_cliente } }
    end

    assert_redirected_to processo_url(Processo.last)
  end

  test "should show processo" do
    get processo_url(@processo)
    assert_response :success
  end

  test "should get edit" do
    get edit_processo_url(@processo)
    assert_response :success
  end

  test "should update processo" do
    patch processo_url(@processo), params: { processo: { adv_assistente: @processo.adv_assistente, adv_principal: @processo.adv_principal, assunto: @processo.assunto, cliente: @processo.cliente, contato_agendado: @processo.contato_agendado, ex_adversa: @processo.ex_adversa, juizo: @processo.juizo, natureza: @processo.natureza, num_processo: @processo.num_processo, tipo_acao: @processo.tipo_acao, ultima_movimentacao: @processo.ultima_movimentacao, ultimo_contato_cliente: @processo.ultimo_contato_cliente } }
    assert_redirected_to processo_url(@processo)
  end

  test "should destroy processo" do
    assert_difference('Processo.count', -1) do
      delete processo_url(@processo)
    end

    assert_redirected_to processos_url
  end
end
