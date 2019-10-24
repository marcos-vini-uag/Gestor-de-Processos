Given ('Eu estou na tela de log in') do
  visit 'users/sign_in'
  expect(page).to have_content('Log in')
end

When ('Eu clico no link Sign up') do
  click_link 'Sign up'
  expect(page).to have_content('Sign up')
end

And ('Eu preencho o campo email com {string}') do |email|
  fill_in 'Email', :with => email
end

And ('O campo senha com {string}') do |senha|
  fill_in 'Password', :with => senha
end

And ('Eu confirmo a senha {string}') do |senha|
  fill_in 'Password confirmation', :with => senha
end

And ('Eu clico no botao Sign up') do
  click_button 'Sign up'
end

Then ('Eu vejo {string} e o cadastro foi realizado com sucesso') do |sucesso|
  expect(page).to have_content(sucesso)
end

And ('Eu clico no botao log in') do
  click_button 'Log in'
end

Then ('Eu estou logado no sistema') do
  u = User.new(:name => 'nome do usuario', :email => 'usuario@email.com', :password => '123456', :password_confirmation => '123456')
  u.save!
  visit '/users/sign_in'
  expect(page).to have_content('Log in')
  fill_in 'Email' , :with => 'usuario@email.com'
  fill_in 'Password', :with => '123456'
  click_button 'Log in'
  expect(page).to have_content('Signed in successfully')
end

When ('Eu clico em Sair') do
  click_link 'Sair'
end

Then ('Eu retorno para a tela de Log in') do
  expect(page).to have_content('Log in')
end

When ('Eu clico em Forgot your password') do
  click_link 'Forgot your password?'
end

And ('Clico em Send me reset password instructions') do
  click_button 'Send me reset password instructions'
end

Then ('Eu recebo a notificacao no email e volto para tela Log in') do
  expect(page).to have_content('Log in')
end

And ('Existe um usuario com o email {string}') do |email|
  u = User.new(:email => email, :password => '123456', :password_confirmation => '123456')
  u.save!

end

Then ('E vejo uma tela de erro indicando que o email ja esta cadastrado') do
  assert_selector('div#error_explanation')
end

