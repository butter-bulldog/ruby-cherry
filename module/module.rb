#
# モジュール
#

# クラスと似ているが
# モジュールからインスタンスを作成することはできない
# ほかのモジュールやクラスを継承することはできない
module Greetable
  def hello
    'hello'
  end
end


# よくある使い方はクラスで共通モジュールをincludeする
# 継承関係を気にすることなく同じ機能を持つことができる
# ミックスインという
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable
  def title
    log ('title is called.')
   'A great movie'
  end
end

class User
  include Loggable
  def name
    log ('name is called.')
   'Alice'
  end
end

product = Product.new
product.title # [LOG] title is called.

user = User.new
user.name # [LOG] name is called.


#
# extend
#
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  # Loggableモジュールのメソッドをクラスメソッドとして追加
  extend Loggable

  def self.create_product(names)
    log 'create_products is called.'
  end
end

Product.create_product([]) #[LOG] create_products is called.
Product.log('Hello.') # [LOG] Hello. # Productクラスのクラスメソッドとして直接呼び出せる


#
# 名前空間を分けて名前の衝突を防ぐ
#
module Baseball
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

# モジュール名::クラス名で区切れる
Baseball::Second('Alice', 13)
Clock::Second(13)
    

