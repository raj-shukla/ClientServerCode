import csv
import statistics
import os
import sys
import time


script = str(sys.argv[1])
outputString = str(sys.argv[1])[:-3]
param = str(sys.argv[2])

executionTimeList = []
cpuTimeList = []
executionTimeStatistics = []
cpuTimeStatistics = []

command1 = '/usr/bin/time -a  -o'
command2 = ' tmp' + outputString + param + '.csv'
command3 = ' -f "%S","%U",%P,%F,%R'
command4 = ' ./' + script
command =  command1 + command2 + command3 + command4
print(command)

for index in range(0, 10):
#{
    start = time.time()
    cpuStart = time.clock()
    
    os.system(command)
    
    end = time.time()
    cpuEnd = time.clock()
    
    executionTime = end - start
    cpuTime = cpuEnd - cpuStart
    
    executionTimeList.append(executionTime)
    cpuTimeList.append(cpuTime)
    time.sleep(15)  
#}

tmpFile = open('tmp' + outputString + param + '.csv')
scriptExecution = csv.reader(tmpFile)
cpuScriptTime = []
for row in scriptExecution :
#{
    cpuScriptTime.append(float(row[0]) + float(row[1]))
#}

TotalCpuTime = []
for index, val in enumerate(cpuTimeList) :
#{
    TotalCpuTime.append( cpuTimeList[index] + cpuScriptTime[index] )
#}



executionTimeStatistics.append(  statistics.mean(executionTimeList) )
executionTimeStatistics.append(  min(executionTimeList) )
executionTimeStatistics.append(  max(executionTimeList) )
executionTimeStatistics.append(  statistics.median(executionTimeList) )
executionTimeStatistics.append(  statistics.variance(executionTimeList) )
executionTimeStatistics.append(  statistics.stdev(executionTimeList) )


cpuTimeStatistics.append(  statistics.mean(TotalCpuTime) )
cpuTimeStatistics.append(  min(TotalCpuTime) )
cpuTimeStatistics.append(  max(TotalCpuTime) )
cpuTimeStatistics.append(  statistics.median(TotalCpuTime) )
cpuTimeStatistics.append(  statistics.variance(TotalCpuTime) )
cpuTimeStatistics.append(  statistics.stdev(TotalCpuTime) )

print(executionTimeList)
print(TotalCpuTime)
print(executionTimeStatistics)
print(cpuTimeStatistics)

f = open(outputString + "ExecutionTime" + param, "w")
f.write("\n".join(map(lambda x: str(x), executionTimeList)))
f.close

f = open(outputString + "CpuTime" + param, "w")
f.write("\n".join(map(lambda x: str(x), TotalCpuTime)))
f.close

f = open(outputString + "ExecutionTimeStatistics" + param, "w")
f.write("\n".join(map(lambda x: str(x), executionTimeStatistics)))
f.close

f = open(outputString + "CpuTimeStatistics" + param, "w")
f.write("\n".join(map(lambda x: str(x), cpuTimeStatistics)))
f.close

