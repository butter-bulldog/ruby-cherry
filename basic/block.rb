#
# ブロック
#

# rubyのeachはJavaScriptのようなコールバック関数でなく、
# ブロックというものを渡す
# |n|の|はブロックパラメータと呼ばれるもので下記例では要素の値が入る
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
puts sum # 10

# 下記例は値が2の要素を削除するが…
# 奇数だけを削除するという処理が実現できない
a = [1, 2, 3, 1, 2, 3]
a.delete(2)
pp a #[1, 3, 1, 3]

# なのでdelete_ifとブロックを使い実現する
a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
  n.odd? # 奇数？
end
pp a # 2, 2]


# do - endの代わりに{}で囲んでもブロックを作れる
# 複数行の場合はdo - end。1行で書くときは{}で書くのが多い
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
puts sum # 10

# each_with_indexを使うと添字が取れる
fruits = ['apple', 'orange', 'melon']
fruits.each_with_index {|fruit, i| puts "#{i}: #{fruit}"}
# 0: apple
# 1: orange
# 2: melon


# ブロックを使用する、使用頻度が高いメソッドはarray.rbに記載


