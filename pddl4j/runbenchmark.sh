#!/bin/bash

pddl=".pddl"
benchmarkLoc="./src/test/resources/benchmarks/$1/"
benchmarkDomain="${benchmarkLoc}domain.pddl"
validationCommand="./src/test/resources/validators/validate-nux"
declare -i nbTest
declare -i validated

if [ "$1" = "gripper" ]
then
    nbTest=20
elif [ "$1" = "logistics" ]
then  
    nbTest=28
elif [ "$1" = "mprime" ]
then  
    nbTest=30
elif [ "$1" = "mystery" ]
then  
    nbTest=30
elif [ "$1" = "ipc3" ]
then  
    nbTest=22
elif [ "$1" = "ipc2002depots" ]
then  
    nbTest=20
else
    echo "Usage : sh runbenchmark.sh arg1 arg2"
    echo "arg1 can be one of the six following : gripper, logistics, mprime, mystery, ipc3, ipc2002depots"
    echo "arg2 can be one of the three following : static, dynamic, asp "
    exit 0
fi 

if [ "$2" = "static" ]
then
    mode="Static"
elif [ "$2" = "dynamic" ]
then  
    mode="Dynamic"
elif [ "$2" = "asp" ]
then  
    mode="ASP"
else 
    echo "Usage : sh runbenchmark.sh arg1 arg2"
    echo "arg1 can be one of the six following : gripper, logistics, mprime, mystery, ipc3, ipc2002depots"
    echo "arg2 can be one of the three following : static, dynamic, asp "
    exit 0
fi 

for i in $(seq 1 $nbTest)
do 
    if [ $i -lt 10 ]
    then
        benchmarkProblem="${benchmarkLoc}p0${i}${pddl}"
    else   
        benchmarkProblem="${benchmarkLoc}p${i}${pddl}"
    fi

    resfile="${benchmarkLoc}result${mode}/p${i}res.txt"

    mkdir "${benchmarkLoc}result${mode}"
    touch $resfile
    chmod 777 "${benchmarkLoc}result${mode}/p${i}res.txt"
    echo "--------------- Start Test $i ---------------"
    if [ "$mode" = "Static" ]
    then
        java -cp classes:lib/pddl4j-4.0.0.jar fr.uga.pddl4j.examples.asp.Arvand_static $benchmarkDomain $benchmarkProblem -e FAST_FORWARD -w 1.2 -t 60 > $resfile
    elif [ "$mode" = "Dynamic" ]
    then
        java -cp classes:lib/pddl4j-4.0.0.jar fr.uga.pddl4j.examples.asp.Arvand_dynamic $benchmarkDomain $benchmarkProblem -e FAST_FORWARD -w 1.2 -t 60 > $resfile
    elif [ "$mode" = "ASP" ]
    then 
        java -cp classes:lib/pddl4j-4.0.0.jar fr.uga.pddl4j.examples.asp.ASP $benchmarkDomain $benchmarkProblem -e FAST_FORWARD -w 1.2 -t 300 > $resfile
    else 
        echo "Unknown mode"
        exit 1
    fi
done

performancefile="${benchmarkLoc}result${mode}/performance.txt"
rm $performancefile
touch $performancefile
chmod 777 $performancefile
validated=1

for i in $(seq 1 $nbTest)
do  
    if [ $i -lt 10 ]
    then
        benchmarkProblem="${benchmarkLoc}p0${i}${pddl}"
    else   
        benchmarkProblem="${benchmarkLoc}p${i}${pddl}"
    fi

    tmpfile="${benchmarkLoc}validate.tmp"
    touch $tmpfile
    chmod 777 $tmpfile

    resfile="${benchmarkLoc}result${mode}/p${i}res.txt"
    cat $resfile | grep ': (' > $tmpfile
    echo "Test ${i} :" >> $performancefile
    
    $validationCommand $benchmarkDomain $benchmarkProblem $tmpfile | grep "Final value" >> $performancefile
    solutionValidate=$($validationCommand $benchmarkDomain $benchmarkProblem $tmpfile | grep "Plan valid")
    echo "${solutionValidate}"
    if [ "$solutionValidate" != "Plan valid" ] 
    then
        validated=0
    fi

    cat $resfile | grep 'seconds total time' >> $performancefile
    cat $resfile | grep 'MBytes total' >> $performancefile
    echo "---------------Test ${i} validation---------------"
    echo $benchmarkProblem
    echo $resfile
    

    $validationCommand $benchmarkDomain $benchmarkProblem $tmpfile

    rm $tmpfile
done

if [ $validated -eq 0 ] 
then
    echo "--------------- Test Failed ---------------"
else
    echo "--------------- Test Successed ---------------"
fi


exit 0