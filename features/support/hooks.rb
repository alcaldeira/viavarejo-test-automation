require 'selenium-webdriver'

Before do
  page.driver.browser.manage.window.maximize
  @acessPage = AcessPage.new
  @home = HomePage.new
  @result = ShoppingPage.new
  @accountPage = SigninPage.new
  @sumary = SumaryPage.new
  @remessa = ShippingPage.new
  @pagamento = PaymentPage.new
end

After do
  Capybara.reset_sessions!
end

# time out
Capybara.default_max_wait_time = 30

After do |scenario|
  nome_cenario = scenario.name.tr(' ', '_').downcase!
  nome_cenario = nome_cenario.gsub(%r{([_@#!%()\-=;><,{}\~\[\]\./\?\"\*\^\$\+\-]+)}, '')
  screenshot = "logs/shots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Clique aqui para ver a evidência!')
end
