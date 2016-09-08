class HelloWorld
  def HelloWorld.hello(name = nil)
    name ? "Hello, #{name}!" : "Hello, World!"
  end
end
