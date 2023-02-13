awk '/ > / {print $3}' trace.txt | cut -d '.' -f 1,2,3,4 | sort | uniq -c | sort -nr | while read line; do
  ip=$(echo $line | awk '{print $2}')
  count=$(grep "$ip" trace.txt |grep '10.30.' |awk -F '.' '{print $5}' | sort | uniq | wc -l)
  echo "$ip has scanned $count ports"
done

