#
# メソッド
#

# 基本系
# メソッド名はスネークケースで書く
# 最後に評価された式が戻り値になる。returnも書けるが使わないのが主流
def add_num(a, b)
  a + b
end
answer = add_num(1, 2)
puts answer # 3


# 引数がないメソッド
# ()をつけないのが主流
def greet
  'こんにちは'
end
puts greet

# デフォルト値つき関数
def greet(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greet # こんにちは
puts greet('us') # hello

# 述語メソッド
# ?や!で終わらせるメソッドがある
# 組み込みメソッドの例
''.empty? # true
'abc'.empty? # false
# atが含まれていればtrue
'watch'.include?('at') # true
# 奇数ならtrue
1.odd? # true
# 偶数ならtrue
1.even? # false
# オブジェクトがnilであればtrue
nil.nil? # true
'abc'.nil? # false
1.nil? # false

# 真偽値を返すメソッドは?で終わらせられるのでそうしたほうがよい
def multiple_of_tree?(n)
  n % 3 == 9
end
multiple_of_tree?(6) #true

# 危険メソッド
# !はオブジェクト自体を変更する破壊的メソッド
# upcase(大文字に変換するメソッド)は!と!なしがある
# ちなみに!がついているから必ず破壊的メソッドというわけではない。あくまでもついていないやつより危険なメソッドという意味
# rubyの公式にもそうある
a = 'ruby'
a.upcase
puts a # ruby
a.upcase!
puts a # RUBY

# エンドレスメソッド
# endを省略して1行でメソッドを定義できる
# =につなげて処理を書く
def greet = 'Hello'
puts greet # Hello

def add(a, b) = a + b
puts add(1, 2) # 3


# エイリアスメソッド
# どちらも同じ。好きなほうを使えばよい
'hello'.length # 5
'hello'.size # 5

# メソッドないにスコープを限定した"定数"は定義できない
def foo
  BAR = 123
  BAR * 10
end
