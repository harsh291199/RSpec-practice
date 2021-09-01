# frozen_string_literal: true

# Player class
class Player
  attr_accessor :credits, :active

  def sub_credits(sub_creds)
    if sub_creds.zero?
      raise StandardError
    end
    @credits -= sub_creds
  end
end
