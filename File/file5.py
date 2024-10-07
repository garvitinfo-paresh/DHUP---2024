import os
#Create a directory "test"
##os.mkdir("demo")


#import os
# Changing a directory to "/home/newdir"
##os.chdir('e:/')
##os.mkdir("test401")
 #then make another directory and see what happen
import os
cwd = os.getcwd()
print("Current Working directory:{0}".format(cwd))


#The rmdir() method deletes the directory, which is passed as an argument
#in the method.
#Before removing a directory, all the contents in it should be removed.

os.rmdir("demo")
