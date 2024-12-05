# frozen_string_literal: true

module Aoc2024
  class Day03
    def self.read_input(filename)
      @@lines = File.readlines(filename, chomp: true).reduce(&:concat)
    end

    def self.solve
      read_input("input/day03.txt")

      # pt 1
      puts solve1()

      # pt 2
      puts solve2()
    end

    def self.solve1
      return solve_work(@@lines)
    end

    def self.solve2
      mod_lines = +""
      enabled = true

      (0...@@lines.length).each do |i|
        if @@lines[i...i+7] == "don't()"
          enabled = false
        elsif @@lines[i...i+4] == "do()"
          enabled = true
        end

        mod_lines << @@lines[i] if enabled
      end

      return solve_work(mod_lines)
    end

    def self.solve_work(line)
      return line.scan(/mul\((\d{1,3}),(\d{1,3})\)/).map { |match| match.map(&:to_i).reduce(&:*) }.reduce(&:+)
    end
  end
end
