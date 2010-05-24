When /^I submit$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I put message in "([^\"]*)"$/ do |field|
	fill_in(field, :with => "Ola, sou da producao da cantora brasileira Daniella Alcarpe. Gostaria de indicar a participacao dessa cantora de grande talento na programacao de voces. Para maiores detalhes, visitem o site http://www.cantora.mus.br. Daniella acaba de lancar seu novo CD, com musica puramente brasileira, composicoes de Carlos Careqa, Ze de Riba, Joao Marcondes, e outros menos conhecidos porem de grande qualidade. Esse trabalho vem sendo muito elogiada pelos criticos. Fico a disposicao para maiores esclarecimentos. Obrigado. Daniel")	
end

When /^I put message2 in "([^\"]*)"$/ do |field|
	fill_in(field, :with => "Ola, sou da producao da cantora brasileira Daniella Alcarpe. Gostaria de indicar a inclusao dessa cantora de grande talento no site de voces. Para conhecerem o trabalho, visitem o site www.cantora.mus.br. Obrigado. Daniel")	
end

When /^I click image of class "([^\"]*)"$/ do |claz|
	find("//img[contains(@class, '#{claz}')]").click 
end

When /^I put email in "([^\"]*)"$/ do |field|
	fill_in(field, :with => "producao@alcarpe.com.br")
end

When /^I put nome in "([^\"]*)"$/ do |field|
	fill_in(field, :with => "Daniel")
end

When /^I execute the script "([^\"]*)"$/ do |arg1|
  evaluate_script(arg1)
end
