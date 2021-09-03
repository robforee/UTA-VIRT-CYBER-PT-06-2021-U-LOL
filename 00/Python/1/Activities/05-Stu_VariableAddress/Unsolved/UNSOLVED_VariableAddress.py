# Create a web address and store it in a variable
url = "https://google.com"

# Store the IP address within a string variable
ip = "192.168.1.1"

# Create some variables to store how many times the site was visited each day
monday = 1000
tuesday = 2000
wednesday = 3000
thursday = 1000
friday = 200
saturday = 900000
sunday = 900

# Add up all of the daily hits for the week and store them in a variable
daily_hits_total = monday + tuesday + wednesday + thursday + friday + saturday + sunday

# Find the average daily hits for the week
average_hits = daily_hits_total / 7

# Print out all the summaries to the screen
print ("url is: " + url)
print ("ip is: " + ip)
print ("average hits is: " + str(int(average_hits)))




