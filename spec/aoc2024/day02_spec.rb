# frozen_string_literal: true

RSpec.describe Aoc2024, class_name: "Aoc2024::Day02" do
  it "calculates 2 for 02 test data pt 1" do
    Aoc2024::Day02.read_input("input/day02-test.txt")

    solution = Aoc2024::Day02.solve1

    expect(solution).to eq(2)
  end

  it "calculates 572 for 02 data pt 1" do
    Aoc2024::Day02.read_input("input/day02.txt")

    solution = Aoc2024::Day02.solve1

    expect(solution).to eq(572)
  end

  it "calculates 4 for 02 test data pt 2" do
    Aoc2024::Day02.read_input("input/day02-test.txt")
  
    solution = Aoc2024::Day02.solve2
  
    expect(solution).to eq(4)
  end
end
