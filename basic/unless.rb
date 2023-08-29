#
# unless文
# ifと反対の意味を持つunless
# elsifに相当するelsunlessみたいなものはない

status = 'error'
unless status == 'ok'
  '何か異常がある'
end

# if文のように変数に代入もできる
status = 'error'
message = 
  unless status == 'ok'
    '何か異常がある'
  end
puts message