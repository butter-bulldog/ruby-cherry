#
# 変数系
#



# 変数名はスネークケースが一般的
special_price = 200

# ２つの値を同時に代入
a, b = 1, 2
#print a
#print b

# 右辺の数が少ない場合はnilが入る
c, d = 10
#print c
#print d # nil 

# 宣言するが使わない意味をあえてアンダースコア始まりの変数にするケースがある
first_name, _last_name = 'Scott Tiger'.split(' ')
#puts first_name # Scott

# 宣言するが使わない意味をあえてアンダースコアだけにするケースがある
first_name, _ = 'Scott Tiger'.split(' ')
#puts first_name # Scott

# 2つの変数に同じ値を代入
a = b = 100
#print a # 100
#print b # 100

# ただし参照なのでbも大文字に変わる
a = b = 'hello'
a.upcase!
#print a # HELLO
#print b # HELLO
