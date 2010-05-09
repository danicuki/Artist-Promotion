module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'
    when /the Programa do Jo page/
      "http://programadojo.globo.com/Programadojo/0,6993,1812,00.html"

		when /the Altas Horas page/
			"http://altashoras.globo.com/Portal/cgpvariedades1/tvaltashoras2009/faleconosco/tvg_tvaltashoras2009_fale_conosco/0,,,00.html"
		
		when /the Patricia Palumbo page/
			"http://patriciapalumbo.com/sobre/"
		
		when /the Nova Brasil page/
			"http://www.novabrasilfm.com.br/contato/"
			
		when /the Selecao Cultura page/
			"http://www2.tvcultura.com.br/radiofm/selecaodoouvinte.htm"
		
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)