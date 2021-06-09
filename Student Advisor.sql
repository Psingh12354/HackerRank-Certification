select std.roll_number, std.name 
from student_information std, faculty_information fi 
where std.advisor = fi.employee_id and (fi.gender = 'M' and fi.salary > 15000 or fi.gender = 'F' and fi.salary > 20000) 
