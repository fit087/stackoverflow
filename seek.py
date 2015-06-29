"""file = open("test.txt", "w")
for i in range(100,200):
    file.write(str(i)+str(i+1)+"\n")
file.close()"""

file = open("test.txt", "r")
line_size = 8
line_number = 50
file.seek((line_number)*(line_size),0)
#file.seek(0,50)
for i in range(30):
    print(file.readline())
file.close()