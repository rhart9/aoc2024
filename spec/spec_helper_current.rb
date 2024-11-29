# frozen_string_literal: true

require_relative "../lib/aoc2024"

RSpec.configure do |config|
  current_day = Aoc2024.get_class_name(nil)

  config.filter_run class_name: current_day
end
