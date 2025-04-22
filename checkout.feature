# language: pt
Funcionalidade: Checkout
  Como cliente da EBAC-SHOP
  Quero fazer ou concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que eu não tenha cadastro na plataforma

  Cenário: Ser direcionado para a tela de criação de cadastro
    Quando eu inserir os dados obrigatórios marcados por asteriscos, email válido e senha com números e símbolos
    Então serei direcionado para a página de checkout

  Cenário: Dados incompletos
    Quando eu deixar campos vazios no cadastro
    Então a mensagem de erro "Campos incompletos" deve aparecer

  Cenário: email inválido
    Quando eu inserir um email inválido ao tentar fazer o cadastro
    Então a mensagem de erro "email inválido" deve aparecer

  Cenário: senha inválida
    Quando eu inserir uma senha inválida
    Então a mensagem de erro "senha inválida" deve aparecer

  Esquema do Cenário: Autenticar criação de usuário
    Quando eu inserir meus <dados>, <email> e <senha>
    Então a mensagem deve ser <mensagem>

    Exemplos:
      | dados                     | email                     | senha      | mensagem            |
      | Matheus Barros, 20/11/1995| mateusbarrosbfr@gmail.com | ebac@123   |                     |
      | João                      | joãomacedo12@gmail.com    | ebac@134   | "campos incompetos  |
      | Juca campos, 11/022/1985  | Jucabaleiro@@@yahoo       | ebac@1234  | "email inválido"    |
      | Joana Ribeiro, 15/04/1997 | Joanaribs@gmail.com       | ebac142    | "senha inválida"    |
