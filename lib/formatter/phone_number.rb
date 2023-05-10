module Formatter
  class PhoneNumber
    InvalidNumber = "Invalid number!"

    def self.call(number)
      formatted = number.gsub(/ /,'').gsub(/[+]/,'').gsub(/44/,'0')

      if formatted[0..1] == "07" && formatted.length == 11
        return formatted
      else
       raise InvalidNumber
     end
    end
  end
end
