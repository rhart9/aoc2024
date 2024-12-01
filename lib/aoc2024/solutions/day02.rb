# frozen_string_literal: true

module Aoc2024
  class Day02
    def self.read_input(filename)
      @@lines = File.readlines(filename, chomp: true)
    end

    def self.solve
      read_input("input/day02.txt")

      # pt 1
      puts solve1()

      # pt 2
      puts solve2()
    end

    def self.solve1
      val = 0

      return val
    end

    def self.solve2
      val = 0

      return val
    end
  end
end
