require 'pry'

module Formatter
  class PhoneNumber

    def self.call(number)
      number = number.gsub(' ', '')
      number = number.gsub('+44', '0')
      number = number.gsub('44', '0')
    end
  end
end
