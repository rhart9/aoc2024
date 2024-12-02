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

      @@lines.each do |line|
        levels = line.split(" ").to_a

        val += 1 if solve_work(levels)
      end

      return val
    end

    def self.solve_work(levels)
      diffs = levels.map(&:to_i).each_cons(2).map { |p| p.first - p.last }
      return diffs.all? { |d| d > 0 && d <= 3} || diffs.all? { |d| d < 0 && d >= -3 }
    end

    def self.solve2
      val = 0
      
      @@lines.each do |line|
        levels = line.split(" ").to_a

        (0...levels.length).each do |i|
          if solve_work(levels.each_with_index.select { |l, idx| i != idx }.map(&:first))
            val += 1
            break
          end
        end
      end

      return val
    end
  end
end
