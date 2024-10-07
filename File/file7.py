#writing data to csv file
##import csv
##with open("emp1.csv","w",newline='') as f:
##    w=csv.writer(f) # returns csv writer object
##    w.writerow(["ENO","ENAME","ESAL","EADDR"])
##    n=int(input("Enter Number of Employees:"))
##    for i in range(n):
##        eno=input("Enter Employee No:")
##        ename=input("Enter Employee Name:")
##        esal=input("Enter Employee Salary:")
##        eaddr=input("Enter Employee Address:")
##        w.writerow([eno,ename,esal,eaddr])
##    print("Total Employees data written to csv file successfully")

#Reading datat to csv file
import csv
f=open("emp1.csv",'r')
r=csv.reader(f) #returns csv reader object
data=list(r)
#print(data)
for line in data:
    for word in line:
        print(word,"\t",end='')
    print()













##    print()
