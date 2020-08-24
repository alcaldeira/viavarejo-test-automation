class SumaryPage
  elementos = %i[
    excluir btn_check
  ]

  attr_reader(*elementos)

  include Capybara::DSL

  def initialize
    @excluir = "a[title='Delete']"
    @btn_check = "a[class='button btn btn-default standard-checkout button-medium']"
  end

  def checkout
    assert_text('Blouse')
    find(btn_check).click
  end
end
