# frozen_string_literal: true

RSpec.describe Aoc2024, class_name: "Aoc2024::Day01" do
  it "calculates 11 for 01 test data pt 1" do
    Aoc2024::Day01.read_input("input/day01-test.txt")

    solution = Aoc2024::Day01.solve1

    expect(solution).to eq(11)
  end

  it "calculates 1530215 for 01 data pt 1" do
    Aoc2024::Day01.read_input("input/day01.txt")

    solution = Aoc2024::Day01.solve1

    expect(solution).to eq(1_530_215)
  end

  it "calculates 31 for 01 test data pt 2" do
    Aoc2024::Day01.read_input("input/day01-test.txt")
  
    solution = Aoc2024::Day01.solve2
  
    expect(solution).to eq(31)
  end
end
