class TempPage < SitePrism::Page
	set_url 'https://temp-mail.org/pt/' 
end

class MailPage < SitePrism::Page
  element :atualiza, "span[class='icon-control control-refresh']"
  element :seleciona, ".glyphicon-chevron-right"
end

class ForgotPage < SitePrism::Page
	set_url 'https://the-internet.herokuapp.com/forgot_password' 
end

class ResetPage < SitePrism::Page
  element :email, "input[id='email']"
  element :enviar, "button[type='submit']"
end
