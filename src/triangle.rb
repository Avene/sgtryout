
class Triangle
  def self.recognize_shape(argv)
    validate_arguments(argv)
    return argv
  end

  def self.validate_arguments(argv)
    # code here
  end

  p 'hello triangle'

  p recognize_shape(ARGV)
end