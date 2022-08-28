 -- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 select employee_name, monthly_salary from employee_salary
join employees on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
 --  2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary from employee_salary
join employees on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary  < 2000;
  -- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name, monthly_salary 
from employee_salary es 
join salary s on es.salary_id  = s.id  
left join employees e on es.employee_id = e.id 
where employee_name is null;

  
-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
  select employee_name, monthly_salary 
from employee_salary es 
join salary s on es.salary_id  = s.id  
left join employees e on es.employee_id = e.id 
where employee_name is null and  monthly_salary < 2000;
-- 5. Найти всех работников кому не начислена ЗП.
  select employee_name, monthly_salary 
from employee_salary es 
join salary s on es.salary_id  = s.id  
right  join employees e on es.employee_id = e.id 
where s.monthly_salary is null
  -- 6. Вывести всех работников с названиями их должности.
 select employee_name, role_name from employees e2 
 join roles_employee re on e2.id = re.id 
 join roles r on r.id = re.id 
  -- 7. Вывести имена и должность только Java разработчиков.
  select employee_name, role_name from employees e2 
 join roles_employee re on e2.id = re.id 
 join roles r on r.id = re.id 
 where r.role_name like '%Java_developer%'
  -- 8. Вывести имена и должность только Python разработчиков.
   select employee_name, role_name from employees e2 
 join roles_employee re on e2.id = re.id 
 join roles r on r.id = re.id 
 where r.role_name like '%Python_developer%'
  -- 9. Вывести имена и должность всех QA инженеров.
 select employee_name, role_name from employees e2 
 join roles_employee re on e2.id = re.id 
 join roles r on r.id = re.id 
 where r.role_name like '%QA%'
  -- 10. Вывести имена и должность ручных QA инженеров.
 select employee_name, role_name from employees e2 
 join roles_employee re on e2.id = re.id 
 join roles r on r.id = re.id 
 where r.role_name like '%Manual_QA%'
  -- 11. Вывести имена и должность автоматизаторов QA
 select employee_name, role_name from employees e2 
 join roles_employee re on e2.id = re.id 
 join roles r on r.id = re.id 
 where r.role_name like '%Automation_QA%'
  -- 12. Вывести имена и зарплаты Junior специалистов
 select employee_name, monthly_salary, role_name from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%Junior%'
  -- 13. Вывести имена и зарплаты Middle специалистов
  select employee_name, monthly_salary, role_name from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%Middle%'
  -- 14. Вывести имена и зарплаты Senior специалистов
  select employee_name, monthly_salary, role_name from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%Senior%'
  -- 15. Вывести зарплаты Java разработчиков
  select employee_name, monthly_salary, role_name from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%Java_developer%'
  -- 16. Вывести зарплаты Python разработчиков
   select employee_name, monthly_salary, role_name from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%Python_developer%'
  -- 17. Вывести имена и зарплаты Junior Python разработчиков
   select employee_name, monthly_salary, role_name from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%Java_Python_developer%'
  -- 18. Вывести имена и зарплаты Middle JS разработчиков
   select employee_name, monthly_salary, role_name from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%Middle_JavaScript%'
  -- 19. Вывести имена и зарплаты Senior Java разработчиков
   select employee_name, monthly_salary, role_name from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%Senior_Java%'
  -- 20. Вывести зарплаты Junior QA инженеров
   select employee_name, monthly_salary, role_name from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%Junior%QA%'
  -- 21. Вывести среднюю зарплату всех Junior специалистов
   select avg(monthly_salary) as AVG_SALARY from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%Junior%'
  -- 22. Вывести сумму зарплат JS разработчиков
    select sum(monthly_salary) as sum_SALARY from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%JavaScript%'
  -- 23. Вывести минимальную ЗП QA инженеров
    select min(monthly_salary) as min_SALARY_QA from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%QA%'
  -- 24. Вывести максимальную ЗП QA инженеров
   select max(monthly_salary) as max_SALARY_QA from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%QA%'
  -- 25. Вывести количество QA инженеров
   select count(role_name) as COUNT_QA from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%QA%'
  -- 26. Вывести количество Middle специалистов.
   select count(role_name) as COUNT_middle from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%Middle%'
  -- 27. Вывести количество разработчиков
   select count(role_name) as COUNT_dev from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%developer%'
  -- 28. Вывести фонд (сумму) зарплаты разработчиков.
   select sum(monthly_salary) as COUNT_QA from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where r2.role_name like '%developer%'
  -- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
   select employee_name, r2.role_name, s2.monthly_salary   from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
order by s2.monthly_salary 
  -- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
     select employee_name, r2.role_name, s2.monthly_salary   from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where monthly_salary between 1700 and 2300 
order by s2.monthly_salary 
-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
    select employee_name, r2.role_name, s2.monthly_salary   from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where monthly_salary < 2300 
order by s2.monthly_salary 
  -- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
    select employee_name, r2.role_name, s2.monthly_salary   from roles r2 
 join roles_employee re2 on re2.id = r2.id 
 join employees e3 on e3.id = re2.id 
 join employee_salary es2 on es2.id = re2.id 
 join salary s2 on s2.id = es2.id 
 where monthly_salary in (1100, 1500, 2000) 
order by s2.monthly_salary 