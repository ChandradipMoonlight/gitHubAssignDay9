#! /bin/bash -x

echo Welcome to Employee Wage Coputation Program on Manin Branch.

checkEmp=$((RANDON%2))

case $checkEmp in
	1)
		echo "Employee is Present" ;;
	0)
		echo "Employee is Absent" ;;
esac
