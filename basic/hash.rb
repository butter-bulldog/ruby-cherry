#
# ハッシュ
# 他言語のオブジェクト、連想配列、ディクショナリ、マップのこと
#

currencies = {
  'japan' => 'yen',
  'us' => 'dollar',
}
currencies['italia'] = 'euro'
pp currencies # {"japan"=>"yen", "us"=>"dollar", "italia"=>"euro"}
pp currencies['brazil'] # 存在しなければnil

# 繰り返し
currencies.each do |key, value|
  puts "#{key}:#{value}"
end
# japan:yen
# us:dollar
# italia:euro

# ブロックパラメータを1つにするとキーと値の配列となる
currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key}:#{value}"
end
# japan:yen
# us:dollar
# italia:euro

# sizeメソッドで要素数がとれる
pp currencies.size # 3

# deleteメソッドで指定したキーで削除
currencies.delete('japan')
pp currencies # {"us"=>"dollar", "italia"=>"euro"}

# キーがなければnil
currencies.delete('china') # nil


#
# メソッド
#

currencies = {japan: 'yen', us: 'dollar'}

# キーを配列で返す
pp currencies.keys # [:japan, :us]

# 値を配列で返す
pp currencies.values # ["yen", "dollar"]

# has_key?はキーが存在するか
# エイリアスとしてkey? include? member?がある
pp currencies.has_key?(:japan) # true
pp currencies.has_key?(:italy) # false


#
# ハッシュの展開
# **をつけるとハッシュ内で他のハッシュを展開できる
#
h = {us: 'dollar', india: 'rupee'}
j = {japan: 'yen', **h}
pp j # {:japan=>"yen", :us=>"dollar", :india=>"rupee"}