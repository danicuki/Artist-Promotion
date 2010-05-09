When /^I submit$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I put message in "([^\"]*)"$/ do |field|
	fill_in(field, :with => "Ola, sou da producao da cantora brasileira Daniella Alcarpe. Gostaria de indicar a participacao dessa cantora de grande talento no seu programa. O site dela eh www.cantora.mus.br. Obrigado. Daniel")	
end

When /^I put email in "([^\"]*)"$/ do |field|
	fill_in(field, :with => "producao@alcarpe.com.br")
end

When /^I put nome in "([^\"]*)"$/ do |field|
	fill_in(field, :with => "Daniel")
end