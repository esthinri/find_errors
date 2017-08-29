Teste de Automação da InMetrics

Teste 100% OK
Foi alterado o browser para o safari, pois a versão do chromedriver que tinha na minha maquina está com problemas.
 para alterar novamente para o chrome é so entrar no env.rb e mudar a linha:
 	
 	Capybara::Selenium::Driver.new(app, :browser => :safari)
 
 para:
 	
 	Capybara::Selenium::Driver.new(app, :browser => :chrome)