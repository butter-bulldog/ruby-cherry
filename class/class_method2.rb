#
# クラスメソッド
#
class User
  def initialize(name)
    @name = name
  end

  # こっちはインスタンスメソッド
  def hello
    "Hello, I am #{@name}"
  end

  # 特異クラスを使ったクラスメソッドの定義
  class << self
    def create_users(names)
      names.map do |name|
        User.new(name)
      end
    end
  end
end

names = ['Alice', 'Bob']

# クラスメソッド呼び出し
users = User.create_users(names)
users.each do |user|
  puts user.hello
end


# Hello, I am Alice
# Hello, I am Bob