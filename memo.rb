class Memo < Post

  def read_from_console
    puts "Input your post, when you will finish print - end"

    @text = []
    line = nil

    while line != "end"
     line = STDIN.gets.chomp
      @text << line
    end
    @text.pop
  end

  def to_string
    time_string = "Created at: #{@created_at.strftime("%Y-%m-%d, %H-%M")} \n\r \n\r"

    @text.unshift(time_string)
  end
end