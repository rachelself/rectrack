class Router

  def self.navigate_categories_menu(categories_controller)
    command = clean_gets

    case command
    when "add"
      categories_controller.add
    when /\d+/
      categories_controller.view(command.to_i)
    else
      puts "I don't know the '#{command}' command."
    end
  end

end