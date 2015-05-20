class Triangle
  def self.recognize_shape(argv)
    return if argv[0] == "/vagrant/spec/triangle_spec.rb" # Workaround fof testing

    nums = parse_args(argv)
    return nums
  end

  def self.parse_args(argv)
    nums = argv.map(&:strip).map { |s| s.gsub(/,/, '') }
    p nums
    raise StandardError.new('illegal num of args') unless nums.size == 3
    raise StandardError.new('illegal character') unless nums.count { |num| /\A\d+\z/.match num } == 3
    nums
  end

  p recognize_shape(ARGV)
end