class Triangle
  def self.recognize_shape(argv)
    return if argv[0] == "/vagrant/spec/triangle_spec.rb" # Workaround fof testing

    nums = parse_args(argv)

    max = nums.max

    return '三角形じゃないです＞＜' if max >= nums.inject(&:+) - max
    return '正三角形ですね！' if nums.uniq.count == 1
    return '二等辺三角形ですね！' if nums.uniq.count == 2
    return '不等辺三角形ですね！'
  end

  def self.parse_args(argv)
    nums = argv.map(&:strip).map { |s| s.gsub(/,/, '') }
    raise StandardError.new('illegal num of args') unless nums.size == 3
    raise StandardError.new('illegal character') unless nums.count { |num| /\A\d+\z/.match num } == 3
    nums.map(&:to_i)
  end

  p recognize_shape(ARGV)
end