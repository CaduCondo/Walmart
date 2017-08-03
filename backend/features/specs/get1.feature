#language:pt

Funcionalidade: Consulta de Rotas API

Cenario: Validação de rotas API

    Quando faço um GET no serviço "/claim_challenge"
    Então o código de resposta é "401"
        E o sistema retorna a dica da próxima rota

Cenario: Obter Primeira Rota

    Quando faço um GET no serviço "/claim_challenge"
    Então o código de resposta é "200"
        E o sistema retorna o body primeira rota

Cenario: Obter Segunda Rota

    Quando faço um GET na primeira rota "/first_step"
    Então o código de resposta é "200"
        E o sistema retorna o body da segunda rota

Cenario: Obter Terceira Rota

    Quando faço um GET na segunda rota "/second_step"
    Então o código de resposta é "200"
        E o sistema retorna o body última rota 

Cenario: Obter Rota inválida

    Quando faço um GET na última rota "/last_step"
    Então o código de resposta é "500"
        E o sistema retorna uma dica da proxima rota   

Cenario: Última Rota

    Quando faço um POST na última rota "/last_step"
    Então o código de resposta é "500" 