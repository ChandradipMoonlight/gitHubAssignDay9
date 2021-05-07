#! /bin/bash -x

echo Welcome to Employee Wage Coputation Program on Manin Branch.

empPresent=1
empAbsent=0
empRate=20

totalWorkingDays=20

for ((i=1; i<=20; i++))
do
	checkEmp=$((RANDOM%3))
	case $checkEmp in
		$empPresent)
			empHr=8 ;;
		$empAbsent)
			empHr=0 ;;
		*)
			empHr=4 ;;
	esac
	totalEmpHr=$(($totalEmpHr+$empHr))
done

totalWageForMonth=$(($totalEmpHr*$empRate))

echo "Total Wage for month is = $totalWageForMonth Rs"
