module Formatter
  class PhoneNumber
    def self.call(number)
      number = number.gsub("+447", "07")
      number = number.gsub("447", "07")
      number = number.gsub(" ", "")
    end
  end
end
