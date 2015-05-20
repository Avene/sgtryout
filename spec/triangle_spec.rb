require 'rspec'

describe 'Triangle' do

  describe 'recognize an equilateral triangle' do
    it 'recognize arguments as equilateral triangle when three arguments are same value'
    it 'does not recognize arguments as equilateral triangle when two arguments are same value'
    it 'does not recognize arguments as equilateral triangle when all arguments are different value'
  end

  describe 'recognize a isosceles triangle' do
    it 'does not recognize arguments as isosceles triangle when three arguments are same value'
    it 'recognize arguments as isosceles triangle when two arguments are same value'
    it 'does not recognize arguments as isosceles triangle when all arguments are different value'
  end

  describe 'recognize a scalene triangle' do
    it 'does not recognize arguments as isosceles triangle when three arguments are same value'
    it 'does not recognize arguments as isosceles triangle when two arguments are same value'
    it 'recognize recognize arguments as isosceles triangle when all arguments are different value'
  end

  describe 'recognize a non-triangle' do
    it 'recognize arguments as non-triangle when largest argument is equal to or larger than sum of other arguments'
    it 'does not recognize arguments as non-triangle when largest argument is less than sum of other arguments'
  end

  describe  'raise error with incorrect arguments' do
    it 'raise error when arguments not formatted'
    it 'raise error when arguments contains 4 or more values'
    it 'raise error when arguments contains 2 or lesso values'
  end

end