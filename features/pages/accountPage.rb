class SigninPage
  elementos = %i[
    email password btn_entrar btn_checkEndereco
  ]

  attr_reader(*elementos)

  include Capybara::DSL

  def initialize
    @email = "input[id='email']"
    @password = "input[id='passwd']"
    @btn_entrar = "button[id='SubmitLogin']"
    @btn_checkEndereco = "[name='processAddress']"
  end

  def login
    find(email).set 'anderson@testeviavarejo.com'
    find(password).set '123456'
    find(btn_entrar).click
  end

  def confirmaEndereco
    find(btn_checkEndereco).click
  end
end
