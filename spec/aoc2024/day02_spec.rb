# frozen_string_literal: true

RSpec.describe Aoc2024, class_name: "Aoc2024::Day02" do
  it "calculates ? for 02 test data pt 1" do
    Aoc2024::Day02.read_input("input/day02-test.txt")

    solution = Aoc2024::Day02.solve1

    expect(solution).to eq(0)
  end

  it "calculates ? for 02 data pt 1" do
    Aoc2024::Day02.read_input("input/day02.txt")

    solution = Aoc2024::Day02.solve1

    expect(solution).to eq(0)
  end

  it "calculates ? for 02 test data pt 2" do
    Aoc2024::Day02.read_input("input/day02-test.txt")
  
    solution = Aoc2024::Day02.solve2
  
    expect(solution).to eq(0)
  end
end
