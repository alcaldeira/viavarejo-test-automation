class ShippingPage
  elementos = %i[
    aceitar_termos confirma_check back_orders pay_check confirma_pagto
  ]

  attr_reader(*elementos)

  include Capybara::DSL

  def initialize
    @aceitar_termos = "div[id='uniform-cgv']"
    @confirma_check = "button[class='button btn btn-default standard-checkout button-medium']"
    @back_orders = "a[title='Back to orders']"
    @pay_check = "a[title='Pay by check.']"
    @confirma_pagto = "button[type='submit']"
  end

  def accept_terms
    execute_script('window.scroll(0,250);')
    within("p[class='checkbox']") do
      find("div[id='uniform-cgv']").click
    end
    find(confirma_check).click
  end

  def confirmacao
    assert_text('Your order on My Store is complete.')
    execute_script('window.scroll(0,350);')
    save_screenshot("data/#{Time.now.strftime('%HH%MM%SS')}pedido.png")
  end

  def confirma_compra
    find(back_orders).click
    assert_text('ORDER HISTORY')
    save_screenshot("data/#{Time.now.strftime('%HH%MM%SS')}pedido.png")
  end
end
