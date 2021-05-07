#! /bin/bash -x

echo Welcome to Employee Wage Coputation Program on Manin Branch.

checkEmp=$((RANDOM%2))

empRate=20

case $checkEmp in
	1)
		empHr=8
		echo "Employee is Present" ;;
	0)
		empHr=0
		echo "Employee is Absent" ;;
esac

empDailyWage=$(($empRate*$empHr))

echo $empDailyWage
