class Array

  def soma
    self.inject(0, :+)
  end
end

puts [].soma
puts [1, 2, 3].soma
