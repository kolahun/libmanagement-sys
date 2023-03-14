import mysql.connector

mydb = mysql.connector.connect(host="localhost", user="root", passwd="A@lok", database="library")
mycursor = mydb.cursor()

# Define the passwords for students and faculty
PASSWORDS = {"student": "password123","faculty": "library456"}

# Prompt the user to enter their credentials
user_type = input("Enter your user type (student/faculty): ")
password = input("Enter your password: ")

# Check if the user type and password are valid
if user_type in PASSWORDS and password == PASSWORDS[user_type]:
    print("Login successful!")
else:
    print("Invalid credentials. Please try again.")
    exit()

def listofbooks():  
    mycursor.execute("SELECT * FROM listofbooks")
    print("+------------------------------+-----------------+-------------------------+-----------+")
    print("| Name of the book             | GENRE OF BOOK   | Author of the book      | Quantity  |")
    print("+------------------------------+-----------------+-------------------------+-----------+")
    for i in mycursor:
        print("|", i[0], " "*(27-len(i[0])), "|", i[1], " "*(15-len(i[1])), "|",
               i[2], " "*(22-len(i[2])), "|", i[3], " "*(8-len(str(i[3]))), "|",)
    print("+------------------------------+-----------------+-------------------------+-----------+")

def entry():
    n = input("Enter your name: ")
    r = int(input("Enter your roll no: "))
    b = input("Enter your branch: ")
    d = input("Enter the date (dd/mm/yyyy): ")
    e = input("Enter the entry time (hh:mm): ")
    reason = input("Enter your reason for entering the library (SUBMIT/STUDY/ISSUE): ")

    com = "INSERT INTO entry (StudentName, RollNo, Branch, Date, Entry,Reason) VALUES (%s, %s, %s, %s, %s,%s)"
    val = (n, r, b, d, e,reason)
    mycursor.execute(com, val)
    mydb.commit()
    print("Data has been entered.")
    print("PLEASE BE QUIET IN THE LIBRARY.")

def issue():
    name = input("Enter the name of the book: ")
    co = 'UPDATE listofbooks SET Quantity = Quantity - 1 WHERE Bookname = "%s"'
    mycursor.execute(co % str(name))
    mydb.commit()
    print("YOUR BOOK HAS BEEN ISSUED.")

def submit():
    name = input("Enter the name of the book: ")
    co = 'UPDATE listofbooks SET Quantity = Quantity + 1 WHERE Bookname = "%s"'
    mycursor.execute(co % str(name))
    mydb.commit()
    print("YOUR BOOK HAS BEEN SUBMITTED.")

def exit_library():
    leaving_time = input("Enter the time of leaving (hh:mm): ")
    rollno = int(input("Enter your roll no: "))
    
    command = "UPDATE entry SET Leaving = %s WHERE RollNo = %s"
    val = (str(leaving_time), rollno)
    mycursor.execute(command, val)
    mydb.commit()
    print("THANK YOU.")

def entries():
    mycursor.execute("SELECT * FROM entry")
    print("+------------------------------+------------------+-------------+---------------+------------+--------------+----------------+")
    print("| Name of the Students         | Roll no.         | Branch      | DATE          | ENTRY TIME | LEAVING TIME |  Reason        |")
    print("+------------------------------+------------------+-------------+---------------+------------+--------------+----------------+")
    for i in mycursor:
        print("|", i[0], " "*(27-len(i[0])), "|", i[1], " "*(15-len(str(i[1]))), "|",
               i[2], " "*(10-len(i[2])), "|", i[3], " "*(12-len(i[3])), "|", i[4]," "*(9-len(i[4])),"|",
                 i[5]," "*(11-len(str(i[5]))),"|",i[6]," "*(13-len(i[6])),"|")
    print("+------------------------------+------------------+-------------+---------------+------------+--------------+----------------+")

def add():
    bname=input("Enter the of book: ")
    genre=input("Enter the genre of the book: ")
    author=input("Enter the name of author: ")
    quantity=int(input("Enter the quantity of book: "))

    command="Insert into/ listofbooks values(%s,%s,%s,%s)"
    val=(bname,genre,author,quantity)
    mycursor.execute(command,val)
    mydb.commit()
    print("BOOK HAS BEEN ENTERED INTO THE LIBRARY ")

print("Insert your details before entering the library.")
if user_type=="student":
    entry()
    while True:
        print("+-------------------------+")
        print("| LIBRARY MANAGEMENT MENU |")
        print("+-------------------------+")
        print("| 1. List of books        |")
        print("| 2. Issue a book         |")
        print("| 3. Submit a book        |")
        print("| 4. Exit the library     |")
        print("+-------------------------+")

        n=int(input("Enter your choice:"))
        if n==1:
            listofbooks()
        elif n==2:
            issue()
        elif n==3:
            submit()
        elif n==4:
            exit_library()
            break
        else:
            print("ENTER A VALID OPTION")

elif user_type=="faculty":
    while True:
        print("+-------------------------+")
        print("| LIBRARY MANAGEMENT MENU |")
        print("+-------------------------+")
        print("| 1. List of books        |")
        print("| 2. Show Entries         |")
        print("| 3. Add a book           |")
        print("| 4. Exit the library     |")
        print("+-------------------------+")
        n=int(input("Enter the desired option: "))
        if n==1:
            listofbooks()
        elif n==2:
            entries()
        elif n==3:
            add()
        elif n==4:
            print("Have a nice day")
            break
        else:
            print("Enter a vlid option ")
