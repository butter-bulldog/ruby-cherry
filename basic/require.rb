#
# ライブラリ
# Stringなどは組み込みライブラリ
# 標準ライブラリだけど組み込みでないものがあるDateなど
# それ以外の有志のライブラリはgem
#

# dateクラスは組み込みでないのでrequireしないといけない
require 'date'
puts Date.today # yyyy-mm-dd