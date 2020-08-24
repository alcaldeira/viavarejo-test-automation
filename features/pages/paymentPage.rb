class PaymentPage
  elementos = %i[
    pay_bank pay_check confirma_pagto
  ]

  attr_reader(*elementos)

  include Capybara::DSL

  def initialize
    @pay_bank = "a[title='Pay by bank wire']"
    @pay_check = "a[title='Pay by check.']"
    @confirma_pagto = "button[class='button btn btn-default button-medium']"
  end

  def pagar_transferencia
    find(pay_bank).click
    find(confirma_pagto).click
    sleep 2
  end

  def pagar_cheque
    find(pay_check).click
    find(confirma_pagto).click
    sleep 2
  end
end
