read -p "Enter 1st number " a
read -p "Enter 2st number " b
read -p "Enter 3rd number " c
read -p "Enter 4th number " d
read -p "Enter 5th number " e
read -p "Enter 6th number " f
read -p "Enter 7th number " g
read -p "Enter 8th number " h
read -p "Enter 9th number " l
read -p "Enter 10th number " m

x=($a $b $c $d $e $f $g $h $l $m)
for ((i=0;i<10;i++))
do
  for((j=0;j<10-i;j++))
  do
if [ ${x[j]} -lt ${x[ $((j+1)) ]} ]
then
   t=${x[j]}
x[j]=${x[$((j+1))]}
x[$((j+1))]=$t
fi
done
echo "${x[@]}"

done
echo "Second largest number =${x[1]}"
echo "Second smallest number =${x[8]}"
