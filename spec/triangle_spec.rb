require 'rspec'
require_relative '../src/triangle'

describe 'Triangle' do
  describe 'recognize an equilateral triangle' do
    subject {Triangle.recognize_shape(args)}
    describe 'recognize arguments as equilateral triangle when three arguments are same value' do
      let(:args){"3, 3, 3"}
      it {is_expected.to eq '正三角形ですね！'}
    end
    describe 'does not recognize arguments as equilateral triangle when two arguments are same value'
    describe 'does not recognize arguments as equilateral triangle when all arguments are different value'
  end

  describe 'recognize a isosceles triangle' do
    describe 'does not recognize arguments as isosceles triangle when three arguments are same value'
    describe 'recognize arguments as isosceles triangle when two arguments are same value'
    describe 'does not recognize arguments as isosceles triangle when all arguments are different value'
  end

  describe 'recognize a scalene triangle' do
    describe 'does not recognize arguments as isosceles triangle when three arguments are same value'
    describe 'does not recognize arguments as isosceles triangle when two arguments are same value'
    describe 'recognize recognize arguments as isosceles triangle when all arguments are different value'
  end

  describe 'recognize a non-triangle' do
    describe 'recognize arguments as non-triangle when largest argument is equal to or larger than sum of other arguments'
    describe 'does not recognize arguments as non-triangle when largest argument is less than sum of other arguments'
  end

  describe  'raise error wdescribeh incorrect arguments' do
    describe 'raise error when arguments not formatted'
    describe 'raise error when arguments contains 4 or more values'
    describe 'raise error when arguments contains 2 or lesso values'
  end

end