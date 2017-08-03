#language: pt

Funcionalidade: Solicitar Reset de Senha
    Eu como usuário, quero solicitar o envio de uma nova 
    Senha para o meu email temporário, em seguida devo realizar a consulta

  Contexto: Obter Email Temporário
    Dado que eu acesse o site do TempMail
    Então eu gravo os dados de email gerado

  Cenario: Reenvio de Senha
    Dado Dado que eu esteja na home de recuperação de senha
    Quando eu informar um email válido
     E clicar no botão Recuperar Senha
    Então o sistema faz o envio de uma nova senha para o email informado

  Cenario: Verificar Caixa de Email
    Dado que eu esteja na tela de email temporário
    Quando clicar no botão para Atualizar as informações
     E clicar no link do email recebido
    Então eu valido o email de senha
