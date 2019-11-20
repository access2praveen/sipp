
for file in *.xml
do
  echo $file
  sipp -sf $file -i $1 $2 -m 1
done
 
