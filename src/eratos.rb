class Eratos
  include Math

  def self.screen(current, potential_primes, sqrt_of_max)
    return potential_primes if current > sqrt_of_max
    potential_primes.delete_if { |num| num != current && num % current == 0 }

    Eratos.screen(potential_primes[potential_primes.index(current) + 1], potential_primes, sqrt_of_max)
  end

  max_num = ARGV[0].to_i
  source_nums = Array(2...max_num)
  p screen(2, source_nums, Math.sqrt(max_num))

end
