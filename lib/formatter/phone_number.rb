# frozen_string_literal: true

require 'pry'

module Formatter
  class PhoneNumber
    InvalidNumber = 'Error!'

    def self.call(number)
      number = remove_whitespace(number)
      number = formats_area_code(number)
    end

    def self.remove_whitespace(number)
      number.gsub(' ', '')
    end

    def self.formats_area_code(number)
      if number[0] == '+'
        number.gsub("+44", '0')
      else
        number.gsub("44", '0')
      end
    end
  end
end
