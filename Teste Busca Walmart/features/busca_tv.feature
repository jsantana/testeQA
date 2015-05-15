#language: pt-br

Funcionalidade: Como cliente do Walmart
				Eu desejo comprar uma tv
				
				
				
Contexto:
		Dado que estou no site walmart.com.br
		E estou na página inicial

				
		
		Cenário: Como  um usuário, desejo realizar uma busca
			Dado que estou homepage do Walmart
			Quando buscar por "tv"
			E clicar no botão Procurar
			Então o site deve mostrar os resultados "TV LED 40"
			
		Cenário: Como um usuário, desejo abrir a página de um produto
				Dado que estou na página de resultados da busca "http://www.walmart.com.br/busca/?ft=tv&PS=20"
				Quando eu clicar no produto "TV LED 40” Samsung 40H5100 Full HD Função Futebol ConnectShare Movie"
				Então o site deve abrir a páginado produto
			
		Cenário: Como um usuário, desejo comprar um produto
				Dado que estou na página do produto "TV LED 40” Samsung 40H5100 Full HD Função Futebol ConnectShare Movie"
				Quando eu clicar no botão Adicionar ao carrinho
				E clicar no botão Continuar
				Então o sistema deve colocar o produto no carrinho
		
		Cenário: Como usuário, desejo verificar se meu produto foi adicionado ao carrinho
					Dado que estou na página do produto "TV LED 40” Samsung 40H5100 Full HD Função Futebol ConnectShare Movie"
					Quando eu clicar no botão "Meu carrinho"
					E o site abrir meu carrinho de compras "https://www2.walmart.com.br/checkout/content/carrinho/"
					Então meu carrinho deve conter o produto"TV LED 40” Samsung 40H5100 Full HD Função Futebol ConnectShare Movie"
					