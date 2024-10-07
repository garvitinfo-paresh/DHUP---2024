#"x" - Create - will create a file, returns an error if the file exist
#"a" - Append - will create a file if the specified file does not exist
#"w" - Write - will create a file if the specified file does not exist


f = open("t1.txt", "x")

Create a new file if it does not exist:
f = open("myfile.txt", "w")
