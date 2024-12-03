# frozen_string_literal: true

RSpec.describe Aoc2024, class_name: "Aoc2024::Day03" do
  it "calculates ? for 03 test data pt 1" do
    Aoc2024::Day03.read_input("input/day03-test.txt")

    solution = Aoc2024::Day03.solve1

    expect(solution).to eq(0)
  end

  it "calculates ? for 03 data pt 1" do
    Aoc2024::Day03.read_input("input/day03.txt")

    solution = Aoc2024::Day03.solve1

    expect(solution).to eq(0)
  end

  it "calculates ? for 03 test data pt 2" do
    Aoc2024::Day03.read_input("input/day03-test.txt")
  
    solution = Aoc2024::Day03.solve2
  
    expect(solution).to eq(0)
  end
end
