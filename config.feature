# language: pt
Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que eu escolha um item na plataforma

  Cenário: Escolher tamanho do produto
    Quando eu selecionar um tamanho para o produto
    Então o tamanho do produto deve ser atualizado

  Cenário: Escolher cor do produto
    Quando eu selecionar uma cor para o produto
    Então a cor do produto deve ser atualizada

  Cenário: Escolher quantidade do produto
    Quando eu selecionar uma quantidade para o produto
    Então a quantidade do produto deve ser atualizada

  Cenário: Adicionar produto ao carrinho com sucesso
    Dado que eu selecione um item e escolha o tamanho, cor e quantidade
    Então serei direcionado à tela de checkout
    

  Cenário: Limitar a quantidade de produtos no carrinho
    Quando eu selecionar um item e uma quantidade maior que 10 produtos
    Então deve aparecer a mensagem de erro "Limite máximo de itens excedido"

  Esquema do Cenário: Configurar produto com diferentes opções
    Quando eu selecionar <item>, escolher <cor>, <tamanho> e <quantidade>
    Então a mensagem deve ser <mensagem>

    Exemplos:
      | item   | cor   | tamanho | quantidade | mensagem                         |
      | Camisa | azul  | G       | 5          |                                  |
      | Cueca  | preta | G       | 25         | "Limite máximo de itens excedido"|
      | calça  | azul  | G       | 10         |                                  |
      | cinto  | azul  | G       | 11         | "Limite máximo de itens excedido"|
