#
# 基本形
#
class User
  # 読み取り専用のゲッター
  attr_reader :first_name, :last_name, :age

  # イニシャライズメソッド. コンストラクタ
  # インスタンス変数は@がつく
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name(user)
    "#{user.first_name} #{user.last_name}"
  end
end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

users.each do |user|
  puts "指名： #{user.full_name(user)}、年齢：#{user.age}"
end

# 指名： Alice Ruby、年齢：20
# 指名： Bob Python、年齢：30