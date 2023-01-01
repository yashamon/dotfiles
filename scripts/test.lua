local res = os.execute('fd . -H -I -d 1 | fzf --reverse --header=\'Jump to location\'')
print(res)
