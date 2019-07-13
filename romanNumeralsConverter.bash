#!/bin/bash

#Author: Antonios Mavridis
#Date: 10/1/2019



echo "Welcome!"
echo "Enter your number please"
	read   number
if [ $number -ge 1 ]
then 	while [ $number -ne  0 ]
		do
        		if [ $number -ge 1000 ]
            		then   echo -n "M"
                   		number=$((number-1000))
        		elif [ $number -ge  900 ]
            		then   echo -n "CM"
                    		number=$((number-900))
        		elif [ $number -ge  500 ]
            		then   echo -n  "D"
                    		number=$((number-500))
                        elif [ $number -ge  400 ]
            		then   echo -n "CD"
                    		number=$((number-400))
              		elif [ $number -ge  100 ]
            		then   echo -n "C"
                    		number=$((number-100))
        		elif [ $number -ge  90 ]
            		then   echo -n "XC"
                    		number=$((number-90))
        		elif [ $number -ge  50 ]
            		then   echo -n "L"
                    		number=$((number-50))
         		elif [ $number -ge  40 ]
            		then   echo -n "XL"
                    		number=$((number-40))
           		elif [ $number -ge  10 ]
            		then   echo -n "X"
                    		number=$((number-10))
          		elif [ $number -ge  9 ]
            		then   echo -n "IX"
                    		number=$((number-9))
             		elif [ $number -ge 5 ]
            			then   echo -n  "V"
                    			number=$((number-5))
           		elif [ $number -ge 4 ]
            		then   echo -n "IV"
                    		number=$((number-4))
            		elif [ $number -ge 1 ]
                		then
                        		if [ $number -eq 3 ]
                            		then echo  "III"
                                		break
                        		elif [ $number -eq 2 ]
                            		then echo  "II"
                                		break
                        		elif [ $number -eq 1 ]
                            		then echo  "I"
						break
                         		fi
        		fi
		done


else 	invert() {
    	 local roman=$1
  	 local k=0
  	 local last=0

  	 for ((j=${#roman}-1;j>=0;j--))
  	 do
    	 case "${roman:$j:1}" in
    	 M)  num=1000 ;;
    	 D)  num=500 ;;
    	 C)  num=100 ;;
    	 L)  num=50 ;;
    	 X)  num=10 ;;
    	 V)  num=5 ;;
    	 I)  num=1 ;;
    	 esac

    	 if [[ $num -lt $last ]]
    	 then
       	 let k-=num
    	 else
       	 let k+=num
    	 fi

    	prev=$num
    	done

  	echo "$roman = $k"
	}
	invert  $number

fi
