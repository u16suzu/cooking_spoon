require 'singleton'
module Hoge
  class Config
    include Singleton
    def lang=(lang)
      @lang = lang
    end
    def lang
      @lang || :en
    end
  end

  class Act
    def show
      Hoge::Config.instance.lang
    end
  end
  def self.configure(&block)
    block.call(self.config) # (2). @config オブジェクトを引数にして ブロックを実行
    # call を省略してもOK
    # block.(self.config)
  end

# (1). Config class の @config オブジェクトを生成する
  def self.config
    @config ||= Config.new
  end
end

Hoge::Config.instance.lang = :ja

a = Hoge::Act.new; b= Hoge::Act.new
[a,b].each do |o|
  p o.show
  p o.object_id
end