##x = open("p24.txt", "x")
##x.write("\n1iya")
##x.write("\n2ya")
##x.write("\n3a")
##x.close()

##x = open("p24.txt","r")
##print(x.read())
##w - mode - write
##x - mode - execution
##a - mode - append


##x.write("\njhiii")
##x.write("hellooo\n")
##x.write("\nIANT")
##x.close()
##x.write()
##print(x.read())


#Reading only part of file
##f = open("p11.txt", "r")
##print(f.read(6))
##
###Return One Line
##f = open("p1.txt", "r")
##print(f.readline())
##
##
###By looping through the lines of the file, you can read the whole file,
###line by line
##f = open("p1.txt", "r")
##for x in f:
##  print(x)
##
###Close the file when you are finish with it
f = open("p11.txt", "r")
print(f.readline())
##f.close()
