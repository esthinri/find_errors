Dado(/^que estou no site do Uol$/) do
 #Acessa a página do UOL diretamente porque o google está bloqueado para automção aqui no Santander
 visit "http://www.uol.com.br"
end

Quando(/^acesso a página de economia$/) do
 #Acessa o link de economia
 click_link("Economia")
end

Então(/^verifico se o valor do dólar está abaixo de (\d+.\d+)$/) do |dolar|
  #pega o texto da área de cotação
  cotacao = find(:xpath,".//*[@id='cambio']/ul/li[1]/p[2]").text

  #Pega apenas a parte da string que corresponde a cotação do dólar e converte para float
  cotacao = (cotacao[-5..-1].sub(",", ".")).to_f

  #Se o valor do dólar estiver maior que 3,20 falha o teste
  if cotacao > dolar
  	fail "Cotação do dólar é maior que 3,20"
  end
end
