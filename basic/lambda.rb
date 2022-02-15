welcome = -> (name) {
  puts "Welcome " + name + "!"
}

welcome.call("Lucas")
welcome.("Lucas")
