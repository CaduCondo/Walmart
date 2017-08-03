Dado(/^que eu acesse o site do TempMail$/) do
  page.driver.browser.manage.window.maximize
  @temp = TempPage.new
  @temp.load
end

Então(/^eu gravo os dados de email gerado$/) do
  find("#mail").value
  @email = find("#mail").value
end

Dado(/^Dado que eu esteja na home de recuperação de senha$/) do
  @page = ForgotPage.new
  @page.load
end

Quando(/^eu informar um email válido$/) do
  @reset = ResetPage.new
  @reset.email. set @email
end

Quando(/^clicar no botão Recuperar Senha$/) do
  @reset.enviar.click
end

Então(/^o sistema faz o envio de uma nova senha para o email informado$/) do
  expect(page).to have_content "Your e-mail's been sent!"
end

Dado(/^que eu esteja na tela de email temporário$/) do
  @temp = TempPage.new
  @temp.load
end

Quando(/^clicar no botão para Atualizar as informações$/) do
  @mail = MailPage.new
  sleep 25
  @mail.atualiza.click
end

Quando(/^clicar no link do email recebido$/) do
  @mail.seleciona.click
end

Então(/^eu valido o email de senha$/) do
  sleep 2
  expect(page).to have_content "no-reply@the-internet.herokuapp.com"
end
