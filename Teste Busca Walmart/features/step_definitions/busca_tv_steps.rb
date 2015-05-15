# Procurar pelo termo "tv" na busca
Dado(/^que estou na homepage do Walmart$/) do
	visit 'walmart.com.br'
end

Quando(/^buscar por "(.*?)"$/) do |searchText|
		fill_in 'suggestion-search', :with => searchText
end

Quando(/^clicar no botão Procurar$/) do 
		click_button 'Procurar'
end

Então (/^o site deve mostrar os resultados "(.*?)"$/) do |expectedText|
		page.should have_content (expectedText)
end


# Clicar em um dos resultados e validar qua a página do produto abriu corretamente
Dado (/^que estou na página de resultados da busca "(.*?)"$/) do |page_to|
		visit page_to
end

Quando (/^eu clicar no produto$/) do  
		click_link ('TV LED 40” Samsung 40H5100 Full HD Função Futebol ConnectShare Movie')
end

Então (/o site deve abrir a páginado produto^$/) do
		page.should have_content ('TV LED 40” Samsung 40H5100 Full HD Função Futebol ConnectShare Movie')
end


#  Adicionar produto ao carrinho
Dado (/^que estou na página do produto "(.*?)"$/) do  |expectedText|
	page.should have_content (expectedText)	
end

Quando (/^eu clicar no botão$/) do
		click_button 'Adicionar ao carrinho'
end

Quando (/^clicar no botão$/) do
		click_button 'Continuar'
end

Então (/^o sistema deve colocar o produto no carrinho$/) do
		within_window (page.driver.browser.window_handles.last)
			if defined? (RSpec::Matchers)
				page.should have_content ('Meu Carrinho ( 1 item)')
				else
				assert page.has_content? ('Meu Carrinho ( 1 item)')
				end
			end
end

# Abrir o carrinho e validar que o mesmo foi adicionado com sucesso

Dado (/^que estou na página do produto "(.*?)"$/) do  |expectedText|
	page.should have_content (expectedText)	
end

Quando (/^eu clicar no botão$/) do
		click_button 'Meu Carrinho' 
end

Quando (/o site abrir meu carrinho de compras^$/) do |page_to|
		visit page_to
end

Então (/^meu carrinho deve conter o produto "(.*?)"$/) do |expectedText|
		page.should have_content (expectedText)
end