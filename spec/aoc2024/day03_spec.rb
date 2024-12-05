# frozen_string_literal: true

RSpec.describe Aoc2024, class_name: "Aoc2024::Day03" do
  it "calculates 161 for 03 test data pt 1" do
    Aoc2024::Day03.read_input("input/day03-test.txt")

    solution = Aoc2024::Day03.solve1

    expect(solution).to eq(161)
  end

  it "calculates 189600467 for 03 data pt 1" do
    Aoc2024::Day03.read_input("input/day03.txt")

    solution = Aoc2024::Day03.solve1

    expect(solution).to eq(189_600_467)
  end

  it "calculates 48 for 03 test data pt 2" do
    Aoc2024::Day03.read_input("input/day03-test.txt")
  
    solution = Aoc2024::Day03.solve2
  
    expect(solution).to eq(48)
  end

  it "calculates 107069718 for 03 pt 2" do
    Aoc2024::Day03.read_input("input/day03.txt")
  
    solution = Aoc2024::Day03.solve2
  
    expect(solution).to eq(107_069_718)
  end
end
