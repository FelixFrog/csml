echo "Welcome in csml-v1.0! [Press any key to continue]";
read var;
echo "INSERT INTO md5(decryption,ecryption) VALUES" > $3
while read p; do
  if [ ! -z "$p" ]; then
    echo "(\"$p\", \"$($1 $p)\")," >> $3
  fi
done < $2
