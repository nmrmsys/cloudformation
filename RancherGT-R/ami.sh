curl https://github.com/rancher/os \
| awk '/<table>/{s=1}s;/<\/table>/{s=0}' \
| sed 's/<[^>]*>//g' | xargs -n 3 | sed '1d' | sort \
| awk '{print "    "$1":";print "      OsOnly: "$3}'
