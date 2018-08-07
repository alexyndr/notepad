require 'date'

class Task < Post

  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console

    puts "Input, what will you do?"
    @text = STDIN.gets.chomp

    puts "Inputs deadline of your task, like a DD.MM.YYYY"
    dead_line = STDIN.gets.chomp

    @due_date = Date.parse(dead_line)
  end

  def to_string
    time_string = "Created at: #{@created_at.strftime("%Y-%m-%d, %H-%M")} \n\r \n\r"
    dead_line = "Dead line: #{@due_date}"

    return [time_string, @text, dead_line]
  end
end