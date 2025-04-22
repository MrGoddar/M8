# language: pt
Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que eu acesse a página de login na plataforma

  Cenário: Usuário e senha válidos
    Quando eu inserir o usuário "matheusbarrosbfr@gmail.com" e a senha "EBAC123!"
    Então serei direcionado para a tela de checkout

  Cenário: Usuário ou senha inválidos
    Quando eu inserir algo diferente de "matheusbarrosbfr@gmail.com" e senha "EBAC123!"
    Então a mensagem de alerta "Usuário ou senha inválidos" será exibida.

  Esquema do Cenário: Autenticar possibilidades
    Quando eu digitar o <usuario> e a <senha>
    Então deve exibir a <mensagem> de erro

    Exemplos:
      | usuario                      | senha        | mensagem                    |
      | "matheusbarrosbfr@gmail.com" | "EBAC123!"   |                             |
      | "matheusbarrosbfr@gmail.com" | "EBAC123234  | "Usuário ou senha inválidos"|
      | "matheusbarrosbfr@gmail.com.br" | "EBAC123!"| "Usuário ou senha inválidos"|
