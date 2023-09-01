#
# よく使われる定番の書き方 (イディオム)
# 
#

# nilガード
# 変数がnilまたはfalseであれば代入する
limit = nil
limit ||= 10
pp limit # 10

limit ||= 20
pp limit # 10

# !!を使った型変換
# 必ずtrueまたはfalseを返したい場合
# !で否定しbooleanに変換される。さらに!で戻す
#

# よくある架空のメソッド
def user_exists?
  user = find_user
  if user
    true
  else
    false
  end
end
# これは↓のように書くとコンパクトになる
def user_exists?
  !!find_user
end



