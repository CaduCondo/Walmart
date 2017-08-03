Quando(/^faço um GET no serviço "([^"]*)"$/) do |service|
#    @api = HTTParty.get('https://test-eng-api.herokuapp.com' + service)
    @api = HTTParty.get('https://test-eng-api.herokuapp.com#{service}/#{@user.id}')  
end

Então(/^o código de resposta é "([^"]*)"$/) do |status|
    expect(@api.code).to eql status.to_i
end

Então(/^o sistema retorna a dica da próxima rota$/) do
    puts @dados = {
          message: "You must accept the right content.",
          right:   "application/json"
}  
end

Então(/^o sistema retorna o body primeira rota$/) do
    puts @dados = {
            allowed:  "true",
            message:  "Follow the path",
            path:     "/first_step",
            token:    "xyx",
            uptime:   56098344
}    
end

Quando(/^faço um GET na primeira rota "([^"]*)"$/) do |service|
    @api = HTTParty.get('https://test-eng-api.herokuapp.com' + service)  
end

Então(/^o sistema retorna o body da segunda rota$/) do
    puts @dados = {
        message: "Access granted. Please use the following as a query param to proceed: firstKey: redKey",
        path:    "/second_step",
        hash:    "9c332e93a6717aa9f1b292c11798d5809d8bf0ce"
}   
end

Quando(/^faço um GET na segunda rota "([^"]*)"$/) do |service|
    @api = HTTParty.get('https://test-eng-api.herokuapp.com' + service)  
end

Então(/^o sistema retorna o body última rota$/) do
    puts @dados = {
        message:    "You have the right key and the right token! You shall progress.",
        path:       "/last_step",
        nextMethod: "post with body"
} 
end

Quando(/^faço um GET na última rota "([^"]*)"$/) do |service|
    @api = HTTParty.get('https://test-eng-api.herokuapp.com' + service)  
end

Então(/^o sistema retorna uma dica da proxima rota$/) do
    puts @dados = {
        message: "You must POST with a BODY!! payload must contain your key and your token."
}  
end

Quando(/^faço um POST na última rota "([^"]*)"$/) do |service|
    @api = HTTParty.post('https://test-eng-api.herokuapp.com' + service)  
end


