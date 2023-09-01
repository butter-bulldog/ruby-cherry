#
# シンボル
# 
# 任意の文字列と一対一に対応するオブジェクト
# :シンボルの名前
# という使い方
#
# 名前を識別できるようにしたいがその名前が必ずしも文字列である必要はない場合に使う
# 内部的には整数なので高速に値比較ができる
# イミュータブルなので勝手に値を変えられない
# 代表的な利用例はハッシュのキー
#
# JsのSymbolと同じ用途っぽい
# 
#

# ハッシュのキーにシンボルを使うと、文字列を使うよりはやい
currencies = {:japan => 'yen', :us => 'dollar'}
pp currencies[:japan] # yen

#
# ハッシュのキーにシンボルを使う場合
# シンボル:値
# という記法でハッシュを作成できる
#
currencies = {japan: 'yen', us: 'dollar'}
pp currencies[:us] # dollar 取り出すときは同じ


# 状態をシンボルで管理する例
status = :done
case status
  when :todo
    puts 'これからやります'
  when :doing
    puts 'いまやってます'
  when :done
    puts 'おわりました'
end
# おわりました