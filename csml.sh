# echo "INSERT INTO md5(decryption,ecryption) VALUES" > $3
while read p; do
  if [ ! -z "$p" ]; then
    echo "(\"$p\", \"$($1 $p)\")," >> $3
  fi
done < <(crunch 1 $2)
