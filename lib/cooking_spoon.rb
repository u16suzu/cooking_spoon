require "cooking_spoon/version"
require "cooking_spoon/unit"
require "cooking_spoon/config"

module CookingSpoon
  class << self
    def quantity_and_unit(quantity, unit=1)
      CookingSpoon::Unit::check_unit(unit)
      
      case unit
        when 0, :gram
          "#{quantity.floor}グラム"
        when 1, :small_spoon
          "小さじ#{spoon_format(quantity)}"
        when 2, :big_spoon
          "大さじ#{spoon_format(quantity)}"
        when 3, :a_little
          "少々"
      end
    end

    def quantity(quantity)
      "#{spoon_format(quantity)}"
    end

    private
    
    def spoon_format(quantity)
      quantity = Rational(quantity)
      if quantity - quantity.floor > 0
        if quantity < 1
          "#{Rational(quantity)}"
        else
          "#{(quantity.floor)}と#{Rational(quantity - quantity.floor)}"
        end
      else
        "#{quantity.floor}"
      end
    end
  end
end
