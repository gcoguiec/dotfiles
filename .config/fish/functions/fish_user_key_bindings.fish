bind \t complete

for mode in default insert
  bind --mode $mode \cr _history
end
