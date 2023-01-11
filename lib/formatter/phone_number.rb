require 'pry'

module Formatter
  class PhoneNumber

    InvalidNumber = 'Error!'

    def self.call(number)
      number = number.gsub(' ', '')
      number = number.gsub('+44', '0')
      number = number.gsub('44', '0')
      raise InvalidNumber
    end
  end
end
