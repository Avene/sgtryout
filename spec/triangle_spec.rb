require 'rspec'
require_relative '../src/triangle'

describe 'Triangle' do
  subject { Triangle.recognize_shape(args) }
  describe 'recognize an equilateral triangle' do
    context 'recognize arguments as equilateral triangle' do
      describe 'when three arguments are same value' do
        let(:args) { ["3,", "3,", "3"] }
        it { is_expected.to eq '正三角形ですね！' }
      end
    end

    context 'does not recognize arguments as equilateral triangle' do
      describe 'when two arguments are same value' do
        let(:args) { ["1,", "3,", "3"] }
        it { is_expected.not_to eq '正三角形ですね！' }
      end
      describe 'when all arguments are different value' do
        let(:args) { ["1,", "2,", "3"] }
        it { is_expected.not_to eq '正三角形ですね！' }
      end
    end
  end

  describe 'recognize a isosceles triangle' do
    context 'recognize arguments as isosceles triangle' do
      describe 'when two arguments are same value' do
        let(:args) { ["1,", "3,", "3"] }
        it { is_expected.to eq '二等辺三角形ですね！' }
      end
    end

    context 'does not recognize arguments as isosceles triangle' do
      describe 'when three arguments are same value' do
        let(:args) { ["3,", "3,", "3"] }
        it { is_expected.not_to eq '二等辺三角形ですね！' }
      end
      describe 'when all arguments are different value' do
        let(:args) { ["1,", "2,", "3"] }
        it { is_expected.not_to eq '二等辺三角形ですね！' }
      end
    end
  end

  describe 'recognize a scalene triangle' do
    context 'recognize recognize arguments as isosceles triangle' do
      describe 'when all arguments are different value' do
        let(:args) { ["2,", "3,", "4"] }
        it { is_expected.to eq '不等辺三角形ですね！' }
      end
    end

    context 'does not recognize arguments as isosceles triangle' do
      describe 'when three arguments are same value' do
        let(:args) { ["3,", "3,", "3"] }
        it { is_expected.not_to eq '不等辺三角形ですね！' }
      end
      describe 'when two arguments are same value' do
        let(:args) { ["1,", "3,", "3"] }
        it { is_expected.not_to eq '不等辺三角形ですね！' }
      end
    end
  end

  describe 'recognize a non-triangle' do
    context 'recognize arguments as non-triangle' do
      describe 'when largest argument is equal to or larger than sum of other arguments' do
        let(:args) { ["1,", "2,", "3"] }
        it { is_expected.to eq '三角形じゃないです＞＜' }
      end
    end

    context 'does not recognize arguments as non-triangle' do
      describe 'when largest argument is less than sum of other arguments' do
        let(:args) { ["1,", "2,", "4"] }
        it { is_expected.not_to eq '三角形じゃないです＞＜' }
      end
    end
  end

  describe 'raise error with incorrect arguments' do
    describe 'raise error when arguments not formatted' do
      let(:args) { ["123"] }
      it { expect { subject }.to raise_error StandardError }
    end
    describe 'raise error when arguments contains 4 or more values' do
      let(:args) { ["1,", "2,", "3,", "4"] }
      it { expect { subject }.to raise_error StandardError }
    end
    describe 'raise error when arguments contains 2 or less values' do
      let(:args) { ["1,", "2,"] }
      it { expect { subject }.to raise_error StandardError }
    end
    describe 'raise error when arguments contains non-integer values' do
      let(:args) { ["1,", "2,", "a"] }
      it { expect { subject }.to raise_error StandardError }
    end
  end

end