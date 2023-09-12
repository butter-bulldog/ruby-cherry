#
# 例外
# 

puts 'Start.'

begin
  1 + '10'
rescue => e
  puts '例外が発生したが続行'
  puts "エラークラス:#{e.class}"
  puts "エラーメッセージ:#{e.message}"
  puts "バックトレース ----"
  puts e.backtrace
  puts "----"
end

puts 'end.'


#
# クラスを指定して補足する例外を限定
#
begin
  1 / 0
rescue ZeroDivisionError
  puts '0除算しました'
end

#
# 意図的に例外を発生
#
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'doloar'
  else
    raise "無効な国名です #{country}"
  end
end

currency_of(:itary) #無効な国名です itary (RuntimeError)


#
# 例外が発生してもしていなくても実行したいとき
#

begin
  # 例外が発生するかもしれない処理
rescue
  # 例外発生時の処理
ensure
  # 例外の有無にかかわらず実行する処理
end

