awk '/ > / {print $1}' trace.txt | cut -d '.' -f 1,2,3,4 | sort | uniq -c | sort -nr | while read line; do
  ip=$(echo $line | awk '{print $2}'| grep '10.30')
  count=$(grep "$ip" trace.txt |awk -F '.' '{print $5}' | sort | uniq | wc -l)
  echo "$ip has scanned $count ports"
done

