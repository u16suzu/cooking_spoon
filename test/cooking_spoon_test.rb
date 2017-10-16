require 'test_helper'

class CookingSpoonTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CookingSpoon::VERSION
  end

  describe "CookingSpoon::Config" do
    def test_config
      assert_equal :en, CookingSpoon::Config.instance.lang

      CookingSpoon::Config.instance.lang = :ja
      assert_equal :ja, CookingSpoon::Config.instance.lang

      CookingSpoon::configure do |config|
        config.lang = :en
      end
      assert_equal :en, CookingSpoon::Config.instance.lang
    end
  end

  describe "CookingSpoon::quantity_and_unit" do
    def test_rational
      assert_equal "小さじ1/2", CookingSpoon::quantity_and_unit(Rational(1, 2), unit)
      assert_equal "小さじ1と1/2", CookingSpoon::quantity_and_unit(Rational(3, 2), unit)
      assert_equal "小さじ2と1/2", CookingSpoon::quantity_and_unit(Rational(5, 2), unit)
    end

    def test_float
      assert_equal "小さじ1/2", CookingSpoon::quantity_and_unit(0.5, unit)
      assert_equal "小さじ1と1/2", CookingSpoon::quantity_and_unit(1.5, unit)
      assert_equal "小さじ2と1/2", CookingSpoon::quantity_and_unit(2.5, unit)
    end

    def test_string
      assert_equal "小さじ1/2", CookingSpoon::quantity_and_unit("1/2", unit)
      assert_equal "小さじ1と1/2", CookingSpoon::quantity_and_unit("3/2", unit)
      assert_equal "小さじ2と1/2", CookingSpoon::quantity_and_unit("5/2", unit)
    end

    def unit
      :small_spoon
    end
  end
  
  describe "CookingSpoon::quantity" do
    def test
      assert_equal "1と1/2", CookingSpoon::quantity(Rational(3, 2))
    end
  end
end
