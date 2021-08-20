IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4
EMP_RATE_PER_HRS=20
NUM_WORKING_DAYS=20

totalEmpHr=0;
totalworkingday=0;

function getWorkingHours(){
   case $1 in
      $IS_FULL_TIME)
          workHours=12
           ;;
       $IS_PART_TIME)
          workHours=8
           ;;
       *)
          workHours=0
          ;;
    esac
    echo $workHours
}

while [[ $totalworkingday -lt $MAX_HRS_IN_MONTH && $totalworkingday -lt $NUM_WORKING_DAYS ]]
do
  (( totalworkingday++ ))
   workHours="$( getWorkingHours $((RANDOM%3)) )"
   totalworkingHours=$(($totalworkingHours+$workHours))
done

totalSalary=$(($totalworkingHours*$EMP_RATE_PER_HRS))
echo "Total employee salary" $totalSalary
    


