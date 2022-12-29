require_relative '../../lib/formatter/phone_number'

RSpec.describe Formatter::PhoneNumber do
  describe '#call' do
    context 'when the number is valid' do
      def valid_number
        "07469484176"
      end

      it 'does not format a number beginning with "07"' do
        formatted_number = Formatter::PhoneNumber.call(valid_number)

        expect(formatted_number).to eq(valid_number)
      end

      it 'removes any spaces from a number' do
        formatted_number = Formatter::PhoneNumber.call('07469 484 176')
        expect(formatted_number).to eq('07469484176')
      end

      it 'formats a number beginning with "+447"' do
        formatted_number = Formatter::PhoneNumber.call('+447469484176')

        expect(formatted_number).to eq(valid_number)
      end

      it 'formats a number beginning with "447"' do
        formatted_number = Formatter::PhoneNumber.call('447469484176')

        expect(formatted_number).to eq(valid_number)
      end
    end
  end
end
