import sys

if __name__ == "__main__":
    #  writing headers
    file = open("testBenchGenerator.py","w")
    file.write("if __name__ == '__main__':\n")
    file.write("\tfile = open('text.txt','w')\n")
    # writing loops
    n = len(sys.argv)
    for i in range(1,n):
        for j in range(0,i):
            file.write("\t")
        file.write(f"for {sys.argv[i]} in range(0,2):\n")
    for i in range(0,n):
        file.write("\t")
    printStatement = ""
    for i in range(1,n):
        argInBrackets = f"{sys.argv[i]}"
        printStatement+=f"{sys.argv[i]} = " + "{" + argInBrackets + "}" + ";"
    printStatement+="#1"
    fk = "\n"
    fk = f"{fk!r}"
    file.write(f"""file.write(f"{printStatement}{fk[1]}{fk[2]}")""")
    file.close()

