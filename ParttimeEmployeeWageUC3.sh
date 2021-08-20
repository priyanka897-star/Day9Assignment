isFullTime=1
isPartTime=0
randomCheck=$(( RANDOM%2 ));
if [ $isFullTime == $randomCheck ]
then
      echo "Employee is Full Time Employee"
     empRatePerHr=200;
     empHrs=8;
     salary=$(( $empHrs * $empRatePerHr ));
elif [ $isPartTime == $randomCheck ]
then
     echo "Employee is Part Time Employee"
      empRatePerHr=200;
     empHrs=4;
     salary=$(( $empHrs * $empRatePerHr ));


fi
echo $salary
