import csv
import statistics
import os
import sys
import time


script = str(sys.argv[1])
outputString = str(sys.argv[1])[:-3]

executionTimeList = []
cpuTimeList = []
executionTimeStatistics = []
cpuTimeStatistics = []

command1 = '/usr/bin/time -a  -o'
command2 = ' tmp' + outputString + '.csv'
command3 = ' -f "%S", '
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
#}

tmpFile = open('tmp' + outputString + '.csv')
scriptExecution = csv.reader(tmpFile)
cpuScriptTime = []
for row in scriptExecution :
#{
    cpuScriptTime.append(float(row[0]))
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

f = open(outputString + "ExecutionTime", "w")
f.write("\n".join(map(lambda x: str(x), executionTimeList)))
f.close

f = open(outputString + "CpuTime", "w")
f.write("\n".join(map(lambda x: str(x), TotalCpuTime)))
f.close

f = open(outputString + "ExecutionTimeStatistics", "w")
f.write("\n".join(map(lambda x: str(x), executionTimeStatistics)))
f.close

f = open(outputString + "CpuTimeStatistics", "w")
f.write("\n".join(map(lambda x: str(x), cpuTimeStatistics)))
f.close

