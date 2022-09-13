#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
maxRateInMonth=100
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkHours()
{
       case $randomCheck in
                                $isFullTime )
                                        empHrs=8
                                ;;
                                $isPartTime )
                                        empHrs=4
                                ;;
                                *)
                                        empHrs=0
				;;
	esac
}

while [[ $totalEmpHr -lt $maxRateInMonth &&
        $totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
        randomCheck=$((RANDOM%3))
	getWorkHours $randomCheck
	totalEmpHr=$((totalEmpHr+empHrs))

done
totalSalary=$(($totalEmpHr*$empRatePerHr))

