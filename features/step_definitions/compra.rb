Dado('que estou na página de compras') do
  @acessPage.url
end

Quando('que tenho um produto adicionado no carrinho') do
  @home.buscar_produto
  @result.seleciona_produto
  @sumary.checkout
end

Quando('efetuar o login') do
  @accountPage.login
  @accountPage.confirmaEndereco
  @remessa.accept_terms
end

Quando('realizar o pagamento') do
  @pagamento.pagar_cheque
end

Então('eu finalizo o meu pedido com sucesso') do
  @remessa.confirmacao
  @remessa.confirma_compra
end
