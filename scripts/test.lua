local res = os.execute('fd . -H -I -d 1 fzf --reverse')
print(res)
