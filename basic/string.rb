#
# 文字列
#

# +演算子で文字列連結できる
name = 'Alice'
puts 'Hello, ' + name + '!' # Hello, Alice!

# ダブルクォートを使えば式展開できる
name = 'Alice'
puts "Hello, #{name}!" # Hello, Alice!

# 文字列比較
'ruby' == 'ruby' # true
'ruby' != 'ruby' # false

# bytesメソッドで文字列のバイト値が配列で帰る
puts 'abc'.bytes # [97,98,99]

# 文字列はStringクラスのオブジェクト
# classメソッドを呼び出すとクラス名を見れる
puts 'abc'.class # String

# ヒアドキュメント
# TEXTは識別子だが自由につけられる
# 慣習としてTEXTやHTMLなど大文字を使う
a = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利
TEXT
puts a

# フォーマット
# 少数第三位までの数字
a = sprintf('%0.3f', 1.2)
puts a # 1.200


# 数値を文字列に変換
123.to_s # 123

# 配列の各要素を連結して1つの文字列にする
a = [10, 20, 30].join
puts a # 102030

# *演算子を使って文字列を繰り返す
a = 'Hi!' * 10
puts a # Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!Hi!