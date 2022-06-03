#!/bin/bash/
for(( i=0; i<=9; i++))
do
        arr[i]=$((RANDOM %901 + 100 ))
done
echo " Array is "
echo ${arr[@]}

largest=$((arr[0]))
sec_largest=$((${arr[1]}))
for ((i=0; i<=9; i++))
do
        if((arr[i] >largest));
        then
                sec_largest=$((largest))
                largest=$((arr[i]))
        fi
        if(( ((arr[i]>sec_largest)) && arr[i]!=largest));
        then
                sec_largest=$((arr[i]))
        fi
done

smallest=$((largest))
sec_smallest=$((largest))
for ((i=0; i<=9; i++))
do
   if((arr[i] <smallest));
   then
      sec_smallest=$((smallest))
      smallest=$((arr[i]))
   fi
   if(( ((arr[i]>sec_largest)) && arr[i] < smallest));
   then
      sec_smallest=$((arr[i]))
   fi

done
echo "second largest number from array is: "
echo "$sec_largest"
echo "second smallest number from array is: "
echo "$sec_smallest"
