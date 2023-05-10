module Formatter
  class PhoneNumber
    InvalidNumber = "Invalid number!"

    def self.call(number)
      formatted = number.gsub(/ /,'').gsub(/[+]/,'').gsub(/44/,'0')
    end
  end
end
