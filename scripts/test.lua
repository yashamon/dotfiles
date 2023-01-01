local res = os.execute('fd . -H -I -d 1 | fzf')
print(res)
