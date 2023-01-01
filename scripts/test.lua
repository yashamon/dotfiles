local res = io.popen ('fd . -H -I -d 1 | fzf', 'r')
os.execute('echo ' .. res)
