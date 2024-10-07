filename = "t1.txt"
# open the file for reading
filehandle = open(filename, 'r')
while True:
    # read a single line
    line = filehandle.readline()
    if not line:
        break
    print(line)

# close the pointer to that file
#filehandle.close()
