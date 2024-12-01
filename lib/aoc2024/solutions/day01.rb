# frozen_string_literal: true

module Aoc2024
  class Day01
    def self.read_input(filename)
      @@lines = File.readlines(filename, chomp: true)

      @@left_locs = []
      @@right_locs = []

      @@lines.each do |line|
        l, r = line.match(/(\d+)\s+(\d+)/).to_a.slice(1..).map(&:to_i)
        @@left_locs << l
        @@right_locs << r
      end
    end

    def self.solve
      read_input("input/day01.txt")

      # pt 1
      puts solve1()

      # pt 2
      puts solve2()
    end

    def self.solve1
      val = 0

      @@left_locs.sort!
      @@right_locs.sort!

      (0...@@lines.length).each do |idx|
        val += (@@left_locs[idx] - @@right_locs[idx]).abs
      end

      return val
    end

    def self.solve2
      val = 0

      right_counts = @@right_locs.tally

      @@left_locs.each do |loc|
        val += loc * (right_counts[loc] ||= 0)
      end

      return val
    end
  end
end
