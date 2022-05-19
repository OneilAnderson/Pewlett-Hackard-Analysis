# Pewlett-Hackard-Analysis

## Purpose
The task that was given to us was to determine the number of retiring employees per title and to label the employees who are eligible for the mentorship program using the SQL skills we developed over the module. The purpose of this report was to prepare for the current employees reaching retirement age, also known as the "silver tsunami."

## Resources
Data Source - (https://github.com/OneilAnderson/Pewlett-Hackard-Analysis/tree/main/Data)
Software - Python 3.9.5, PostgreSQL 5.2


## Results
### Deliverable 1
- For the first table in the Deliverable, we combined the employees numbers, first and last names with the table of titles, that contained the titles and dates. We placed this data into a table called "retirement_titles" and linked the primary keys of the title  and employees table. The table was then filtered using the WHERE function and ordered by the employee number. 
- For the second table in the Deliverable, we used the DISTINCT ON function to filter out any duplicate factors in our employee number column. We then pulled out the employee number, first name, last name and title from our retirement_titles table into a new table called "unique_titles." We set the order for the employees number and the most recent title date to descend.
- For the third table of the Deliverable, we wrote another query to determine the amount of employees that were about to retire with their most recent job title. For this, we used the COUNT function and filtered the employees numbers from the unique_titles. Then, we pulled the titles from the unique_titles table and placed into a new table called "retiring_titles." We then group the table by the titles and order the count number in descending order.

### Deliverable 2
- In this Deliverable, we needed to find out which employees were eligible for the mentorship program. To do this , we needed to look at three different tables : employees, titles, and department employees. We used the DISTINCT ON functon to filter the duplicate employee numbers, then we pulled the employee numbers, first name, last name and the birth date from the employees table. We also pulled the dates from the department employees table and the titles from the titles table.
- We proceeded to place the new information into a new table called "mentorship_eligibility." We connected the primary key of the employees to the department employees and titles. Then, we used the WHERE function to filter all the current employees who were born in 1965 and then ordered the table by employee number.

## Summary
- There are 90,398 roles that need to be filled when the "silver tsunami" makes an impact. This number was found through totaling the results from the "retiring_titles" table.
- There are currently enough retirement ready employees that can mentor the next generation of Pewlett Hackard employees. There are 90,398 retirement ready employees and around 1,940 employees that are born after the year 1965.

<img width="246" alt="RETIRING" src="https://user-images.githubusercontent.com/85713532/127552918-de44ff67-717d-4526-876a-57c3774704cc.png">
<img width="251" alt="NEW GENERATION" src="https://user-images.githubusercontent.com/85713532/127552921-d7d69261-7848-41e2-b655-f303ee35d059.png">

