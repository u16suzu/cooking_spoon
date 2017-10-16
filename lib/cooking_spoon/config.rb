require "singleton"

module CookingSpoon
  class Config
    include Singleton

    def lang=(lang)
      @lang = lang
    end

    def lang
      @lang || :en
    end
  end

  class << self
    def configure(&block)
      block.call(CookingSpoon::Config.instance)
    end
  end
end