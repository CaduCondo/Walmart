# walmart
Intalar Ruby e o DevKit http://rubyinstaller.org/downloads/

Após a instalação do Ruby, abrir o prompt de comando do Windows na pasta raiz do DevKit (onde foram extraídos os arquivos) e executar o comando (“ruby dk.rb init” em seguida “ruby dk.rb install”) 
executar “gem install bundler”
executar “gem install pretest”
executar “pretest environment”

Criei a estrutura de diretórios usando o pretest, que foi criado por uma equipe de onde fiz um curso de automação ruby.
executar “pretest nome_do_projeto”

Com isso é criado a estrutura abaixo: 
=Gemfile 
=cucumber.yml 
=data 
=features 
=features/step_definitions 
=features/support 
=features/support/env.rb 
=feature/support/hooks.rb 
=feature/support/pages

em seguida, deve entrar na pasta do projeto que foi criado e 
executar “bundle install” 
(instalando as dependências que já foram declaradas no arquivo Gemfile)

Para fazer um teste, basta
executar “cucumber” 
na pasta raiz do projeto. O sistema retorna o seguinte: 
“=Using the default profile... 
=0 scenarios =0 steps =0m0.002s” 
Indicando que não a cenários e steps criados.

Pronto, agora é só desenvolver os cenários no formato BDD nos arquivos .features

O exercício 1 foi tagueado com @exercicio1 e o exercício 2 com @exercicio2 e ambos com @projeto. 
Para executar o projeto inteiro, basta rodar cucumber e a tag que deseja rodar. ; )

O exercício 2 foi bem complicado, comecei usando o Postman, que acho mais fácil, consegui chegar até a 4 chamada da API.
Porém, não consegui passar tudo para a automação pro httParty.
Estou commitando o que fiz, porém, infelizmente, não funcionou.
Estou comitando tambem o json do postman, caso deem uma olhada, verão como funciona.

Técnicas e Ferramentas 
Utilizarei o VSCode para desenvolver, acho uma ferramenta leve e completa. 
Escreverei os cenários de testes utilizando o formato BDD, qual ajuda muito deixando os cenários muito mais fáceis de se entender. 

Hoje em dia trabalho com automação com Protractor, NodeJS, Jasmine, em JavaScript, por isso estou um pouco enferrujado no Ruby, que aprendi quando trabalhei quase 1 ano no Walmart, lugar que adoro e que gostaria muito de voltar.
Trabalhei na equipe do SIGE, onde não tínhamos automação na época, porém, aprendi muito com o Walmart, com as pessoas e principalmente em DOJOS. 
Espero ter a oportunidade de voltar. 

Desde já, agradeço
