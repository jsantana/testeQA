Cenário: Validação de CEP nos correios

	Quando eu solicitar a validação do CEP "07130510"
	Então o status code deve ser 200
	E o resultado deve ser o JSON:
	"""
    [
     {
		bairro: "Jardim Testae",
		logradouro: "Rua João Artoni",
		cep: "07130510",
		uf: "SP",
		localidade: "Guarulhos"
	 }
    ]
    """
Cenário: Validação de CEP nos correios
	

	Quando eu solicitar a validação do CEP "07075070"
	Então o status code deve ser 200
	E o resultado deve ser o JSON:
	"""
    [
     {
		bairro: "Jardim Palmira",
		logradouro: "Rua Enedina Torchetti",
		cep: "07075070",
		uf: "SP",
		localidade: "Guarulhos"
	 }		
    ]
    """
	
Cenário: Validação de um CEP inválido nos correios

	Quando eu solicitar a validação CEP  07130930
	Então o status code deve ser 200
	E o resultado deve ser o JSON:
	
	"""
	[
	{ erro: true}
	]
	"""
	
Cenário: Validação de CEP inválido nos correios

	Quando eu solicitar a validação do CEP 01447888
	Então o status code deve ser 200
	E o resultado deve ser o JSON:
	
	"""
	[
	{ erro: true}
	]
	"""
	