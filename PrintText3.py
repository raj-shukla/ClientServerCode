file = open('file', 'r')
string = file.readline()
for index in range(0, 8*100*100):
    print(string)

