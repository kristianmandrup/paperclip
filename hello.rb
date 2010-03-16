module Hello
  def hello
    puts "hello"
  end
  
  def hillo
    hello
  end
end

class B
  include Hello
end

B.new.hillo