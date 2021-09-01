# frozen_string_literal: true

module CustomMatcher
  class OurCustomMatcher
    def initialize(target)
      @target = target
    end

    def matches?(value)
      value == @target
    end
  end

  def failure_message
    'Our matcher failed to match'
  end

  def self.custom_matcher(target)
    OurCustomMatcher.new(target)
  end
end
