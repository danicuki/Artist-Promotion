Feature: Publish artist data in tv and radio websites 
  In order to promote my artist
  As a artist producer
  I want send messages to many tv and radio websites, telling about the Artist every day til they contact me

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
    When I put nome in "nome"
		And I fill in "cidade" with "São Paulo"
		And I fill in "bairro" with "Cerq Cesar"
		And I select "Brasil" from "pais"
		And I select "SP" from "estado"
		And I fill in "nascimento" with "18/03/1979"
		And I fill in "profissao" with "Gerente"
		And I fill in "escolaridade" with "Mestrado"
		And I fill in "ddd" with "11"
		And I fill in "telefone" with "99907528"
		And I fill in "endereco" with "Al Ministro Rocha Azevedo"
		And I put message in "mensagem"
		And I put email in "email"
		And I click image "/Portal/cgpvariedades1/tvaltashoras2009/img/bt_enviar_altas2.gif"
		Then I should see "Mensagem Enviada"
			
	Scenario: Nova Brasil FM
	  Given I am on the Nova Brasil page
	  When I select "Material de artistas independentes" from "assunto"
		And I put nome in "nome"
		And I put email in "email"
		And I put message in "mensagem"
		And I press "Enviar!"
	  Then I should see "Entre em contato"
	
	Scenario: Gazeta FM
  	Given I am on the Gazeta FM page
		When I put nome in "nome"
		And I put email in "email"
		And I put message in "menssagem"
		And I press "Enviar"
		Then I should see "mensagem enviada com sucesso"

  # nao preenche os campos
	# Scenario: MPB FM
	#   Given I am on the MPB FM page
	# 	When I put nome in "txtSeuNome"
	# 	And I put email in "txtSeuEmail"
	# 	And I put message in "txaComentario"
	# 	And I fill in "txtIdade" with "30"
	# 	And I fill in "txtBairro" with "Centro"
	# 	And I select "Sugestão" from "cmbAssunto"
	# 	And I Submit form
	# 	Then I should see "mensagem enviada com sucesso"


  #selenium trava nesse site 
	# Scenario: Eldorado FM
	#   	Given I am on the Eldorado FM page
	# 	When I put nome in "nome"
	# 	And I put email in "email"
	# 	And I put message in "mensagem"
	# 	And I press "Enviar"
	# 	Then I should see "enviado com sucesso"
	
	# selenium nao preenche os campos
	# Scenario: Selecao Cultura
	#   Given I am on the Selecao Cultura page
	# 	And I put nome in "nome"
	# 	And I fill in "email" with "danicuki@gmail.com"
	# 	And I fill in "telefone" with "11 9990-7528"
	# 	And I fill in "bairro" with "Jardins"
	# 	And I fill in "cidade" with "Sao Paulo"
	# 	And I fill in "musica1" with "Vestidim"
	# 	And I fill in "interprete1" with "Daniella Alcarpe"
	# 	And I fill in "compositor1" with "Ze de Riba"
	# 	And I SUBMIT form
	# 	And I should see "AGRADECEMOS"

	
