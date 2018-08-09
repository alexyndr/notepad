require 'date'

class Post
  def initialize
    @time_now = Time.now
    @text = nil
    @created_at = Time.now
  end

  def self.post_types
    [Memo, Task, Link]
  end

  def self.create(index_class)
    return post_types[index_class].new
  end

  def read_from_console
    #todo
  end

  def to_string
    #todo
  end

  def file_patch
    file_patch = File.dirname(__FILE__)

    file_name = @time_now.strftime("#{self.class.name}_Y%-m%-d%_H%-M%.txt")

    return file_patch + "/" + file_name
  end

  def save
    file = File.new(file_patch, "w:UTF-8")

    for item in to_string
      file.puts(item)
    end
    file.close
  end
end