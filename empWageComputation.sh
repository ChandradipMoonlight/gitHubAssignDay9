#! /bin/bash -x

echo Welcome to Employee Wage Coputation Program on Manin Branch.

empPresent=1
empAbsent=0
empRate=20
maxEmpHr=100
maxWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

while [ $totalEmpHr -lt $maxEmpHr ] && [ $totalWorkingDays -lt $maxWorkingDays ]
do
	checkEmp=$((RANDOM%3))

	totalWorkingDays=$(($totalWorkigDays+1))
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

totalWage=$(($totalEmpHr*$empRate))

echo "Total Wage is = $totalWage Rs"
