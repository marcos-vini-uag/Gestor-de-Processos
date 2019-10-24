Feature: Advogado
  As a usuario do sistema
  I want to cadastrar, logar, alterar senha, listar processos pelo meu numero da OAB e sair do sistema
  so that eu possa usar o sistema de gestor de processos

  Scenario: Cadastrando uma conta
    Given Eu estou na tela de log in
    When Eu clico no link Sign up
    And Eu preencho o campo email com "marcos@hotmail.com"
    And O campo senha com "111111"
    And Eu confirmo a senha "111111"
    And Eu clico no botao Sign up
    Then Eu vejo "Welcome! You have signed up successfully." e o cadastro foi realizado com sucesso

  Scenario: Logando no sistema
    Given Eu estou na tela de log in
    When Eu preencho o campo email com "marcos@hotmail.com"
    And O campo senha com "111111"
    And Eu clico no botao log in
    Then Eu estou logado no sistema

  Scenario: Log out do sistema
    Given Eu estou logado no sistema
    When Eu clico em Sair
    Then Eu retorno para a tela de Log in

  Scenario: Alterando a senha
    Given Eu estou na tela de log in
    When Eu clico em Forgot your password
    And Eu preencho o campo email com "marcos@hotmail.com"
    And Clico em Send me reset password instructions
    Then Eu recebo a notificacao no email e volto para tela Log in

  Scenario: Cadastrando email existente
    Given Eu estou na tela de log in
    And Existe um usuario com o email "marcos@hotmail.com"
    When Eu clico no link Sign up
    And Eu preencho o campo email com "marcos@hotmail.com"
    And O campo senha com "111111"
    And Eu confirmo a senha "111111"
    And Eu clico no botao Sign up
    Then E vejo uma tela de erro indicando que o email ja esta cadastrado