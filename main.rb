require 'date'
# UTf-8 encode

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative 'note.rb'
require_relative 'link.rb'
require_relative 'task.rb'
require_relative 'memo.rb'

puts "Hello! Im your amazing notepad!"
puts "Please choise, what do you whant to post.\n\r"

choises = Post.post_types
choise = -1
  until choise >= 0 and choise < choises.size

    choises.each_with_index do |element,i|
      puts "\tIf you whant \"#{element.to_s.upcase}\" Please input: #{i}"
    end

    choise = STDIN.gets.chomp.to_i
    puts choise
  end

create = Post.create(choise)

create.read_from_console
create.save

puts "Thank you that you used amazing notepad!"