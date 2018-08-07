class Link < Post

  def initialize
    super
    @url = ''
  end

  def read_from_console

    puts "Input URL of tab what you would like to save"
    @url = STDIN.gets.chomp
    puts "Input description of your URL"
    @text = STDIN.gets.chomp
  end

  def to_string
    time_string = "Created at: #{@created_at.strftime("%Y-%m-%d, %H-%M")} \n\r \n\r"
    return [time_string, @url, @text]
  end
end