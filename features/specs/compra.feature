#language: pt

Funcionalidade: Realizar compra MyStore
    Eu como usuário do site, 
    Desejo realizar a compra
    de produtos

Contexto: Acessar o site My Store
    Dado que estou na página de compras

@compra_sucesso
Cenário: Efetuar compra sem cadastro
    Quando que tenho um produto adicionado no carrinho
        E efetuar o login
        E realizar o pagamento
    Então eu finalizo o meu pedido com sucesso