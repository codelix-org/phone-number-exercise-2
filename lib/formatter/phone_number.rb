module Formatter
  class PhoneNumber
    def self.call(number)
      number.gsub(/ /,'').gsub(/[+]/,'').gsub(/44/,'0')
    end
  end
end
