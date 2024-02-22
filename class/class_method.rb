#
# クラスメソッド
#
class User
  def initialize(name)
    @name = name
  end

  # self.を付けるとクラスメソッドになる
  # (クラスに関連は深いけどインスタンス変数を使わないようなメソッド)
  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  # こっちはインスタンスメソッド
  def hello
    "Hello, I am #{@name}"
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