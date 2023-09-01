#
# アクセサメソッド
#
class User
  # ゲッター、セッターのアクセサメソッドはattr_accessorメソッドを使うと
  # 全部書かなくて良い
  # 読み取り専用はattr_reader
  # 書き込み専用はattr_writer
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
user.name = 'Bob'
pp user.name # Bob