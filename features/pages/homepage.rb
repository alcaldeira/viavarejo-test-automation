class HomePage
  elementos = %i[
    search btn_busca dresses t_shirts
  ]

  attr_reader(*elementos)

  include Capybara::DSL

  def initialize
    @search = "input[id='search_query_top']"
    @btn_busca = "button[name='submit_search']"
    @dresses = "a[title='Dresses']"
    @t_shirts = "a[title='T-shirts']"
  end

  def buscar_produto
    find(@search).set 'blouses'
    find(btn_busca).click
  end
end
