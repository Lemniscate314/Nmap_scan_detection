wk '/ > / {print $1}' trace.txt | grep '10.30'|cut -d '.' -f 1,2,3,4 | sort | uniq -c | sort -nr | awk '{print $2 " " $1}'
