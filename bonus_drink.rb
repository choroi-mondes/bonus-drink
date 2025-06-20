# First written in VBA by T. Yoshida, then converted to Ruby with help from ChatGPT.
# typed: true
#require 'sorbet-runtime'

class BonusDrink
#  extend T::Sig

#  sig { params(initial: Integer).returns(Integer) }
  def self.total_drinks(initial)
    keep_drink = initial
    cash_bottle = 0
    total_drank = 0

    while keep_drink > 0
      keep_drink -= 1
      cash_bottle += 1

      if cash_bottle == 3
        keep_drink += 1
        cash_bottle = 0
      end

      total_drank += 1
    end

    total_drank
  end
end

puts BonusDrink.total_drinks(100)
