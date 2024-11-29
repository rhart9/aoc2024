# frozen_string_literal: true
#!/usr/bin/env ruby

require "thor"
require_relative "aoc2024"

class Generator < Thor::Group
  include Thor::Actions

  argument :day_num

  def self.source_root
    File.expand_path("../", File.dirname(__FILE__))
  end

  def create_inputs
    create_file("input/day#{day_num}.txt")
    create_file("input/day#{day_num}-test.txt")
  end

  def create_lib
    template("templates/day.rb.tt", "lib/aoc2024/solutions/day#{day_num}.rb")
  end

  def create_spec
    template("templates/day_spec.rb.tt", "spec/aoc2024/day#{day_num}_spec.rb")
  end
end

class_name = Aoc2024.get_class_name(nil)
if class_name.nil?
  day_num = 1
else
  day_num = class_name[class_name.length - 2..class_name.length].to_i + 1
end

Generator.start([format("%02d", day_num)])
