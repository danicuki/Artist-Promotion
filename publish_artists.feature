Feature: Publish artist data in tv and radio websites 
  In order to promote my artist
  As a artist producer
  I want send messages to many tv and radio websites, telling about the Artist

  Scenario: Send mail to Programa do Jo
    Given I am on the Programa do Jo page
    When I put nome in "txtNome"
		And I put email in "txtEmail"
		And I put message in "txtMensagem"
		And I fill in "txtCidade" with "São Paulo"
		And I fill in "txtEstado" with "SP"
		And I fill in "txtPais" with "Brasil"
		And I press "Enviar"
    Then I should see "Sua mensagem foi enviada com"

   Scenario: Send mail to Altas Horas
    Given I am on the Altas Horas page
    When I fill in "nome" with "Daniel Cukier"
		And I fill in "cidade" with "São Paulo"
		And I select "Brasil" from "pais"
		And I fill message in "mensagem"
		And I press "enviar"
		    Then I should see "Mensagem Enviada"
	
	Scenario: Patricia palumbo blog
	  Given I am on the Patricia Palumbo page
	  When fill in "author" with "Daniel"
		And I put email in "email"
		And I fill in "url" with "http://www.cantora.mus.br"
		And I fill in "comment" with "Olá Patrícia. Gostaria de recomendar a cantora Daniella Alcarpe para participar do programa vozes do Brasil. O site da cantora é <a href='http://www.cantora.mus.br'>www.cantora.mus.br</a> "
	  And I press "submit"
		Then I should see "Gostaria de recomendar"
		
	Scenario: Nova Brasil FM
	  Given I am on the Nova Brasil page
	  When I select "Material de artistas independentes" from "assunto"
		And I put nome in "nome"
		And I put email in "email"
		And I put message in "mensagem"
		And I press "Enviar!"
	  Then I should see "Entre em contato"
	
	@agora
	Scenario: Selecao Cultura
	  Given I am on the Selecao Cultura page
		And I put nome in "nome"
		And I fill in "email" with "danicuki@gmail.com"
		And I fill in "telefone" with "11 9990-7528"
		And I fill in "bairro" with "Jardins"
		And I fill in "cidade" with "Sao Paulo"
		And I fill in "musica1" with "Vestidim"
		And I fill in "interprete1" with "Daniella Alcarpe"
		And I fill in "compositor1" with "Ze de Riba"
		And I press "Envie"
		And I should see "AGRADECEMOS"
	
	
	
	
	
	
	
