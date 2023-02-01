for i in {1..255}
do
  ping -W 1 -c 1 10.93.161.$i &> /dev/null
  if [ $? -eq 0 ]; then
    echo "10.93.161.$i est en ligne" >> online.txt
  else
    echo "10.93.161.$i est hors ligne" >> offline.txt
  fi
done