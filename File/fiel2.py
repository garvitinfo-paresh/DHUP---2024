#"a" - Append - will append to the end of the file
#"w" - Write - will overwrite any existing content

##f = open("t1.txt", "a")
##f.write("Now the file has more content!")
##f.close()

f = open("test2.txt", "r")
print(f.read())


#the "w" method will overwrite the entire file.
##f = open("t1.txt", "w")
##f.write("Woops! I have deleted the content!")
##f.close()

#open and read the file after the appending:
##f = open("t1.txt", "r")
##print(f.read())
