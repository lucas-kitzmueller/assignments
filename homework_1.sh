
# intro
echo "Doing homework 1 – Part 1"
cd ~/Development/assignments
pwd

# making program executable
chmod +x filter.py

# curl and pipe into filter.py, and redirect into expensive_water.csv
curl -N "https://projects.propublica.org/congress/assets/staffers/2017Q1-house-disburse-detail.csv" | ./filter.py > expensive_water.csv

# pipe expensive_water.csv into csvstat and redirect that into a file called expensive_water_summary.txt
cat expensive_water.csv | csvstat > expensive_water_summary.txt

# open
# open expensive_water.csv

# open a file called expensive_water_description.txt. In your own words, in a few sentences, explain what you've just done.
echo "First, I downloaded a dataset that seems to list the expenditures of members of the House of Representatives 
for their Washington and and district offices in the first quarter of 2017. (https://projects.propublica.org/represent/expenditures). 
Second, I filtered all expenses with the purpose water and an amount above 1000 using the python script. 
For doing so, I piped stdout from curl as stdin into the python file, where I assigned it the variable data. 
Then, I used the csv libarary to create a csv reader and a writer. Then, I looped through all rows and if the 
condition that the purpose is water and the amount is above 1000 was met, I added the row. The resulting csv 
became stdout was redirected to expensive_water.csv.
Third, I created summary statistics using csvstat. I did this by piping expensive_water.csv into csvstat and
then redirecting the output into expensive_water_summary.txt"> expensive_water_description.txt

# Done
echo "Homework 1 - Part 1: Done"

# starting part 2
echo "Doing homework 1 – Part 2"

# making program executable
chmod +x filter_modified.py

# redirect into ooutput.csv
curl -N "https://projects.propublica.org/congress/assets/staffers/2017Q1-house-disburse-detail.csv" | ./filter_modified.py > output.csv

# create summary
cat output.csv | csvstat > summary.txt

# open
open output.csv
open summary.txt

# write description
echo "In total, congress members spent 2,827,264.72 dollars on printing and reproduction in the first quarter of 2017." > description.txt

# Done
echo "Homework 2 - Part 2: Done"
