--Deliverable 1--
SELECT e.emp_no,
e.first_name,
e.last_name,
ts.title,
ts.from_date,
ts.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles AS ts
ON (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

SELECT * FROM retirement_titles

SELECT DISTINCT ON (ret.emp_no)ret.emp_no,
ret.first_name,
ret.last_name,
ret.title
INTO unique_titles
FROM retirement_titles as ret
ORDER BY ret.emp_no,
		 ret.to_date DESC;

SELECT * FROM unique_titles

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY ut.count DESC;

SELECT * FROM retiring_titles

--Deliverable 2--
SELECT DISTINCT ON (e.emp_no)e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ts.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ts
ON (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
		AND(de.to_date = '1999-01-01')
ORDER BY e.emp_no


SELECT * FROM mentorship_eligibility
