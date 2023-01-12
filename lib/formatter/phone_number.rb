# frozen_string_literal: true

require 'pry'

module Formatter
  class PhoneNumber
    InvalidNumber = 'Error!'

    class << self
      def call(number)
        number = remove_whitespace(number)
        formats_area_code(number)
      end

      private

      def remove_whitespace(number)
        number.gsub(' ', '')
      end

      def formats_area_code(number)
        if number[0] == '+'
          number.gsub('+44', '0')
        else
          number.gsub('44', '0')
        end
      end
    end
  end
end
