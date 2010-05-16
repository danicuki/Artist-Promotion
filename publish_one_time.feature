Feature: Publish artist just one time
  In order to promote my artist
  As a artist producer
  I want send messages to many tv and radio websites, telling about the Artist just one time

	Scenario: Patricia palumbo blog
	  Given I am on the Patricia Palumbo page
	  When fill in "author" with "Daniel"
		And I put email in "email"
		And I fill in "url" with "http://www.cantora.mus.br"
		And I fill in "comment" with "Olá Patrícia. Gostaria de recomendar a cantora Daniella Alcarpe para participar do programa vozes do Brasil. O site da cantora é <a href='http://www.cantora.mus.br'>www.cantora.mus.br</a> "
	  And I press "submit"
		Then I should see "Gostaria de recomendar"
				
	Scenario: O toque
	  Given I am on the O toque page
		And I put nome in "txt_nome"
		And I put email in "txt_email"
		And I put message2 in "txt_mensagem"
		And I press "enviar dados"
	  Then I should see "Sua mensagem foi enviada"
	
	Scenario: Sites de música
	  Given I am on the Sites de musica page
		And I put nome in "your-name"
		And I put email in "your-email"
		And I put message2 in "your-message"
		And I press "Enviar"
	  Then I should see "Sua mensagem foi enviada"
	
	@agora
	Scenario: Sobre sites
	  Given I am on the Sobre Sites page
		And I put nome in "name"
		And I put email in "email"
		And I put message2 in "body"
		And I fill in "subject" with "Cantora Daniella Alcarpe"
		And I press "enviar"
	  Then I should see "mensagem foi enviada com sucesso"

	
	
	
	
	
	
	
