IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=10
EMP_RATE_PER_HRS=20
NUM_WORKING_DAYS=20

totalEmpHr=0
totalworkingDays=0

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalworkingDays -lt $NUM_WORKING_DAYS ]]
do 
((totalworkingDays++))
empCheck=$((RANDOM%3));
    case $empCheck in
         $IS_FULL_TIME )
                 empHrs=8;;
         $IS_FULL_TIME )
                  empHrs=4;;
         *)
                  empHrs=0;;
    esac
totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr+$EMP_RATE_PER_HRS))
echo $totalSalary

