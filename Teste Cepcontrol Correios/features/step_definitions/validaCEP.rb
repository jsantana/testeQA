Quando (/^eu solicitar a validação CEP (.*) $/) do |cep|
		@last_response = HTTParty.get('http://cep.correiocontrol.com.br/' + cep + '.json') 
end

Então (/^ status code deve ser 200$/) do 
	@last_response.code == 200
end


E (/^o resultado deve ser o JSON:$/) do |json| 
	JSON.parse(@last_response.body).should == JSON.parse(json)
end

