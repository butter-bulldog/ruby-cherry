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
