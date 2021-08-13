#opens file and assigns it to a variable
log_file = open("um-server-01.txt")


# creates a function
def sales_reports(log_file):
    #for loop reading over each line in the open file
    for line in log_file:
        #removing empty spaces from each line 
        line = line.rstrip()
        #assign new string to a substring of line, in this case the first 3 letters.
        #can remove zero from this declaration as it is unnecssary 
        # python will assume it starts from 0 index if left blank
        day = line[0:3]
        #if the first 3 characters of the line string, or the 3 characters of substring day are 'Tue' 
        #the code in the next indent will run
        if day == "Mon":
            #prints the contents of a single line to the console
            print(line)

#calls the function declared in line 6 (method i think its called in python)
sales_reports(log_file)
