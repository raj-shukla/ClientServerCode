file = open('file', 'r')
string = file.readline()
for index in range(0, 20000):
    print(string)

