module CookingSpoon
  module Unit
    TYPES = {gram: 0, small_spoon: 1, big_spoon: 2, a_little: 3}

    class InvalidUnitError < StandardError; end

    class << self
      def check_unit(arg)
        raise InvalidUnitError.new( "単位が適切ではありません" ) unless valid?(arg)
      end

      private

      def valid?(arg)
        (Unit::TYPES.keys + Unit::TYPES.values).include?(arg)
      end
    end
  end
end