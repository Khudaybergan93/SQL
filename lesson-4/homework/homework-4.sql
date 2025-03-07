create database w3resource
use w3resource

create table salesman (salesman_id int,    name  varchar(30),   city  varchar(30), commission float)

Insert into salesman values (5001 , 'James Hoog','New York',0.15),
							(5002 , 'Nail Knite','Paris',0.13),
							(5005 , 'Pit Alex','London',0.11),
							(5006 , 'Mc Lyon','Paris',0.14),
							(5007 , 'Paul Adam','Rome',0.13),
							(5003 , 'Lauson Hen','San Jose',0.12)
select* from salesman
--1st Task in First page of Tasks
Select salesman_id, name, city, commission from salesman
where city='Paris' Or city='Rome'

--2nd task in First page of Tasks
/* it is just repeated from task 1 */
select* from salesman
Select salesman_id, name, city, commission from salesman
where city='Paris' OR city='Rome'

--3rd task in First page of Tasks
select* from salesman
Select salesman_id, name, city, commission from salesman
where city !='Paris' And city !='Rome'

--4th task in First page of Tasks
Create table customer (customer_id int,   cust_name  varchar(30),    city  varchar(30), grade int, salesman_id  int) 
insert into customer values (3002 ,'Nick Rimando','New York',100 ,5001),
                            (3007 ,'Brad Davis','New York',200 ,5001),
                            (3005 ,'Graham Zusi','California',200 ,5002),
                            (3008 ,'Julian Green','London',300 ,5002),
                            (3004 ,'Fabian Johnson','Paris',300 ,5006),
                            (3009 ,'Geoff Cameron','Berlin',100 ,5003),
                            (3003 ,'Jozy Altidor','Moscow',200 ,5007),
                            (3001 ,'Brad Guzan','London',null,5005)
select* from customer

Select * from customer
where customer_id=3007 OR customer_id=3008 OR customer_id=3009

--5th task in First page of Tasks
select* from salesman

Select salesman_id, name, city, commission from salesman
where commission between 0.12 and 0.14 

--6th task in First page of Tasks
create table orders (ord_no  int,purch_amt float, ord_date date, customer_id int ,salesman_id int)
insert into orders values (70001,150.5   ,'2012-10-05',3005 ,5002),
						  (70009,270.65  ,'2012-09-10',3001 ,5005),
						  (70002,65.26   ,'2012-10-05',3002 ,5001),
						  (70004,110.5   ,'2012-08-17',3009 ,5003),
						  (70007,948.5   ,'2012-09-10',3005 ,5002),
						  (70005,2400.6  ,'2012-07-27',3007 ,5001),
						  (70008,5760    ,'2012-09-10',3002 ,5001),
						  (70010,1983.43 ,'2012-10-10',3004 ,5006),
						  (70003,2480.4  ,'2012-10-10',3009 ,5003),
						  (70012,250.45  ,'2012-06-27',3008 ,5002),
						  (70011,75.29   ,'2012-08-17',3003 ,5007),
						  (70013,3045.6  ,'2012-04-25',3002 ,5001)
select* from orders
Select ord_no,purch_amt, ord_date, customer_id,salesman_id from orders
where (purch_amt between 500 and 4000) and purch_amt Not IN(948.50, 1983.43)

--7th task in First page of Tasks
select* from salesman
select salesman_id, name, city, commission from salesman
where name like '[B-K]%'

--8th task in First page of Tasks
select* from salesman
select salesman_id, name, city, commission from salesman
where name like '[^A-M]%'

--9th task in First page of Tasks
Select * from customer
select customer_id, cust_name, city, grade, salesman_id from customer
where cust_name like 'B%' 

--10th task in First page of Tasks
Select * from customer
select customer_id, cust_name, city, grade, salesman_id from customer
where cust_name like '%n'

--11th task in First page of Tasks
select* from salesman
select  salesman_id, name, city, commission from salesman
where name like 'N__l%'

--12th task in First page of Tasks 


--20th task in First page of Tasks 
select* from customer
select customer_id, cust_name, city, grade, salesman_id from customer
where grade is Null

--21st task in First page of Tasks 
select* from customer
select customer_id, cust_name, city, grade, salesman_id from customer
where grade is not null

--22nd task in the First page of Tasks
create table emp_details ( EMP_IDNO int,EMP_FNAME varchar(30),EMP_LNAME varchar(30),EMP_DEPT int)

insert into emp_details values (127323,'Michale','Robbin',57),
							   (526689,'Carlos','Snares',63),
							   (843795,'Enric','Dosio',57),
							   (328717,'Jhon','Snares',63),
							   (444527,'Joseph','Dosni',47),
							   (659831,'Zanifer','Emily',47),
							   (847674,'Kuleswar','Sitaraman',57),
							   (748681,'Henrey','Gabriel',47),
							   (555935,'Alex','Manuel',57),
							   (539569,'George','Mardy',27),
							   (733843,'Mario','Saule',63),
							   (631548,'Alan','Snappy',27),
							   (839139,'Maria','Foster',57)
select* from emp_details
select EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT from emp_details
where EMP_LNAME like 'D%'

--1st task in the Second page of Tasks
create table employees (EMPLOYEE_ID int, FIRST_NAME  varchar(25), LAST_NAME   varchar(25), EMAIL varchar(25) ,PHONE_NUMBE varchar(15), HIRE_DATE date,JOB_ID     varchar(25), SALARY   float, COMMISSION_PCT float, MANAGER_ID int, DEPARTMENT_ID int)
 
insert into employees values(100 ,'Steven', 'King', 'SKING','515.123.4567','2003-06-17', 'AD_PRES', 24000.00 , 0.00 ,0   ,  90 ),
							(101 ,' Neena','Kochhar','NKOCHHAR','515.123.4568','2005-09-21','AD_VP', 17000.00 , 0.00 ,100 ,  90 ),
							(102 ,' Lex','De Haan','LDEHAAN','515.123.4569','2001-01-13','AD_VP', 17000.00 , 0.00 ,100 ,  90 ),
							(103 ,' Alexander','Hunold','AHUNOLD','590.423.4567','2006-01-03','IT_PROG',  9000.00 , 0.00 ,102 ,  60 ),
							(104 ,' Bruce','Ernst','BERNST','590.423.4568','2007-05-21',' IT_PROG',  6000.00 , 0.00 ,103 ,  60 ),
							(105 ,' David','Austin','DAUSTIN','590.423.4569','2005-06-25','IT_PROG',  4800.00 , 0.00 ,103 ,  60 ),
							(106 ,' Valli','Pataballa','VPATABAL','590.423.4560','2006-02-05','IT_PROG',  4800.00 , 0.00 ,103 ,  60 ),
							(107 ,' Diana','Lorentz','DLORENTZ','590.423.5567','2007-02-07','IT_PROG',  4200.00 , 0.00 ,103 ,  60 ),
							(108 ,' Nancy','Greenberg','NGREENBE','515.124.4569','2002-08-17','FI_MGR', 12008.00 , 0.00 ,101 , 100 ),
							(109 ,' Daniel','Faviet','DFAVIET','515.124.4169','2002-08-16','FI_ACCOUNT',  9000.00 , 0.00 ,108 , 100 ),
							(110 ,' John','Chen','JCHEN','515.124.4269','2005-09-28','FI_ACCOUNT',  8200.00 , 0.00 ,108 , 100 ),
							(111 ,' Ismael','Sciarra','ISCIARRA','515.124.4369','2005-09-30','FI_ACCOUNT',  7700.00 , 0.00 ,108 , 100 ),
							(112 ,' Jose Manuel','Urman',' JMURMAN  ','515.124.4469','2006-03-07','FI_ACCOUNT',  7800.00 , 0.00 ,108 , 100 ),
							(113 ,' Luis','Popp','LPOPP','515.124.4567','2007-12-07','FI_ACCOUNT',  6900.00 , 0.00 ,108 , 100 ),
							(114 ,' Den','Raphaely','DRAPHEAL','515.127.4561','2002-12-07','PU_MAN', 11000.00 , 0.00 ,100 ,  30 ),
							(115 ,' Alexander','Khoo','AKHOO','515.127.4562','2003-05-18','PU_CLERK',  3100.00 , 0.00 ,114 ,  30 ),
							(116 ,' Shelli','Baida','SBAIDA','515.127.4563','2005-12-24','PU_CLERK',  2900.00 , 0.00 ,114 ,  30 ),
							(117 ,' Sigal','Tobias','STOBIAS','515.127.4564','2005-07-24','PU_CLERK',  2800.00 , 0.00 ,114 ,  30 ),
							(118 ,' Guy','Himuro','GHIMURO','515.127.4565','2006-11-15','PU_CLERK',  2600.00 , 0.00 ,114 ,  30 ),
							(119 ,' Karen','Colmenares','KCOLMENA','515.127.4566','2007-08-10','PU_CLERK',  2500.00 , 0.00 ,114 ,  30 ),
							(120 ,' Matthew','Weiss','MWEISS','650.123.1234','2004-07-18','ST_MAN',  8000.00 , 0.00 ,100 ,  50 ),
							(121 ,' Adam','Fripp','AFRIPP','650.123.2234','2005-04-10','ST_MAN',  8200.00 , 0.00 ,100 ,  50 ),
							(122 ,' Payam','Kaufling','PKAUFLIN','650.123.3234','2003-05-01','ST_MAN',  7900.00 , 0.00 ,100 ,  50 ),
							(123 ,' Shanta','Vollman','SVOLLMAN','650.123.4234','2005-10-10','ST_MAN',  6500.00 , 0.00 ,100 ,  50 ),
							(124 ,' Kevin','Mourgos','KMOURGOS','650.123.5234','2007-11-16','ST_MAN',  5800.00 , 0.00 ,100 ,  50 ),
							(125 ,' Julia','Nayer','JNAYER','650.124.1214','2005-07-16','ST_CLERK',  3200.00 , 0.00 ,120 ,  50 ),
							(126 ,' Irene','Mikkilineni','IMIKKILI','650.124.1224','2006-09-28','ST_CLERK',  2700.00 , 0.00 ,120 ,  50 ),
							(127 ,' James','Landry','JLANDRY','650.124.1334','2007-01-14','ST_CLERK',  2400.00 , 0.00 ,120 ,  50 ),
							(128 ,' Steven','Markle','SMARKLE','650.124.1434','2008-03-08','ST_CLERK',  2200.00 , 0.00 ,120 ,  50 ),
							(129 ,' Laura','Bissot','LBISSOT','650.124.5234','2005-08-20','ST_CLERK',  3300.00 , 0.00 ,121 ,  50 ),
							(130 ,' Mozhe','Atkinson','MATKINSO','650.124.6234','2005-10-30','ST_CLERK',  2800.00 , 0.00 ,121 ,  50 ),
							(131 ,' James','Marlow','JAMRLOW','650.124.7234','2005-02-16','ST_CLERK',  2500.00 , 0.00 ,121 ,  50 ),
							(132 ,' TJ','Olson','TJOLSON','650.124.8234','2007-04-10','ST_CLERK',  2100.00 , 0.00 ,121 ,  50 ),
							(133 ,' Jason','Mallin','JMALLIN','650.127.1934','2004-06-14','ST_CLERK',  3300.00 , 0.00 ,122 ,  50 ),
							(134 ,' Michael','Rogers','MROGERS','650.127.1834','2006-08-26','ST_CLERK',  2900.00 , 0.00 ,122 ,  50 ),
							(135 ,' Ki','Gee','KGEE','650.127.1734','2007-12-12','ST_CLERK',  2400.00 , 0.00 ,122 ,  50 ),
							(136 ,' Hazel','Philtanker','HPHILTAN','650.127.1634','2008-02-06','ST_CLERK',  2200.00 , 0.00 ,122 ,  50 ),
							(137 ,' Renske','Ladwig','RLADWIG','650.121.1234','2003-07-14','ST_CLERK',  3600.00 , 0.00 ,123 ,  50 ),
							(138 ,' Stephen','Stiles','SSTILES','650.121.2034','2005-10-26','ST_CLERK',  3200.00 , 0.00 ,123 ,  50 ),
							(139 ,' John','Seo','JSEO','650.121.2019','2006-02-12','ST_CLERK',  2700.00 , 0.00 ,123 ,  50 ),
							(140 ,' Joshua','Patel','JPATEL','650.121.1834','2006-04-06','ST_CLERK',  2500.00 , 0.00 ,123 ,  50 ),
							(141 ,' Trenna','Rajs','TRAJS','650.121.8009','2003-10-17','ST_CLERK',  3500.00 , 0.00 ,124 ,  50 ),
							(142 ,' Curtis','Davies','CDAVIES','650.121.2994','2005-01-29','ST_CLERK',  3100.00 , 0.00 ,124 ,  50 ),
							(143 ,' Randall','Matos','RMATOS','650.121.2874','2006-03-15','ST_CLERK',  2600.00 , 0.00 ,124 ,  50 ),
							(144 ,' Peter','Vargas','PVARGAS','650.121.2004','2006-07-09','ST_CLERK',  2500.00 , 0.00 ,124 ,  50 ),
							(145 ,' John','Russell','JRUSSEL','011.44.1344.','2004-10-01','SA_MAN', 14000.00 , 0.40 ,100 ,  80 ),
							(146 ,' Karen','Partners','KPARTNER','011.44.1344.','2005-01-05','SA_MAN', 13500.00 , 0.30 ,100 ,  80 ),
							(147 ,' Alberto','Errazuriz','AERRAZUR','011.44.1344.','2005-03-10','SA_MAN', 12000.00 , 0.30 ,100 ,  80 ),
							(148 ,' Gerald','Cambrault','GCAMBRAU','011.44.1344.','2007-10-15','SA_MAN', 11000.00 , 0.30 ,100 ,  80 ),
							(149 ,' Eleni','Zlotkey','EZLOTKEY','011.44.1344.','2008-01-29','SA_MAN', 10500.00 , 0.20 ,100 ,  80 ),
							(150 ,' Peter','Tucker','PTUCKER','011.44.1344.','2005-01-30','SA_REP', 10000.00 , 0.30 ,145 ,  80 ),
							(151 ,' David','Bernstein','DBERNSTE','011.44.1344.','2005-03-24','SA_REP',  9500.00 , 0.25 ,145 ,  80 ),
							(152 ,' Peter','Hall','PHALL','011.44.1344.','2005-08-20','SA_REP',  9000.00 , 0.25 ,145 ,  80 ),
							(153 ,' Christopher','Olsen','COLSEN','011.44.1344.','2006-03-30','SA_REP',  8000.00 , 0.20 ,145 ,  80 ),
							(154 ,' Nanette','Cambrault','NCAMBRAU','011.44.1344.','2006-12-09','SA_REP',  7500.00 , 0.20 ,145 ,  80 ),
							(155 ,' Oliver','Tuvault','OTUVAULT','011.44.1344.','2007-11-23','SA_REP',  7000.00 , 0.15 ,145 ,  80 ),
							(156 ,' Janette','King','JKING','011.44.1345.','2004-01-30','SA_REP', 10000.00 , 0.35 ,146 ,  80 ),
							(157 ,' Patrick','Sully','PSULLY','011.44.1345.','2004-03-04','SA_REP',  9500.00 , 0.35 ,146 ,  80 ),
							(158 ,' Allan','McEwen','AMCEWEN','011.44.1345.','2004-08-01','SA_REP',  9000.00 , 0.35 ,146 ,  80 ),
							(159 ,' Lindsey','Smith','LSMITH','011.44.1345.','2005-03-10','SA_REP',  8000.00 , 0.30 ,146 ,  80 ),
							(160 ,' Louise','Doran','LDORAN','011.44.1345.','2005-12-15','SA_REP',  7500.00 , 0.30 ,146 ,  80 ),
							(161 ,' Sarath','Sewall','SSEWALL','011.44.1345.','2006-11-03','SA_REP',  7000.00 , 0.25 ,146 ,  80 ),
							(162 ,' Clara','Vishney','CVISHNEY','011.44.1346.','2005-11-11','SA_REP', 10500.00 , 0.25 ,147 ,  80 ),
							(163 ,' Danielle','Greene','DGREENE','011.44.1346.','2007-03-19','SA_REP',  9500.00 , 0.15 ,147 ,  80 ),
							(164 ,' Mattea','Marvins','MMARVINS','011.44.1346.','2008-01-24','SA_REP',  7200.00 , 0.10 ,147 ,  80 ),
							(165 ,' David','Lee','DLEE','011.44.1346.','2008-02-23','SA_REP',  6800.00 , 0.10 ,147 ,  80 ),
							(166 ,' Sundar','Ande','SANDE','011.44.1346.','2008-03-24','SA_REP',  6400.00 , 0.10 ,147 ,  80 ),
							(167 ,' Amit','Banda','ABANDA','011.44.1346.','2008-04-21','SA_REP',  6200.00 , 0.10 ,147 ,  80 ),
							(168 ,' Lisa','Ozer','LOZER','011.44.1343.','2005-03-11','SA_REP', 11500.00 , 0.25 ,148 ,  80 ),
							(169 ,' Harrison','Bloom','HBLOOM','011.44.1343.','2006-03-23','SA_REP', 10000.00 , 0.20 ,148 ,  80 ),
							(170 ,' Tayler','Fox','TFOX','011.44.1343.','2006-01-24','SA_REP',  9600.00 , 0.20 ,148 ,  80 ),
							(171 ,' William','Smith','WSMITH','011.44.1343.','2007-02-23','SA_REP',  7400.00 , 0.15 ,148 ,  80 ),
							(172 ,' Elizabeth','Bates','EBATES','011.44.1343.','2007-03-24','SA_REP',  7300.00 , 0.15 ,148 ,  80 ),
							(173 ,' Sundita','Kumar','SKUMAR','011.44.1343.','2008-04-21','SA_REP',  6100.00 , 0.10 ,148 ,  80 ),
							(174 ,' Ellen','Abel','EABEL','011.44.1644.','2004-05-11','SA_REP', 11000.00 , 0.30 ,149 ,  80 ),
							(175 ,' Alyssa','Hutton','AHUTTON','011.44.1644.','2005-03-19','SA_REP',  8800.00 , 0.25 ,149 ,  80 ),
							(176 ,' Jonathon','Taylor','JTAYLOR','011.44.1644.','2006-03-24','SA_REP',  8600.00 , 0.20 ,149 ,  80 ),
							(177 ,' Jack','Livingston','JLIVINGS','011.44.1644.','2006-04-23','SA_REP',  8400.00 , 0.20 ,149 ,  80 ),
							(178 ,' Kimberely','Grant','KGRANT','011.44.1644.','2007-05-24','SA_REP',  7000.00 , 0.15 ,149 ,   0 ),
							(179 ,' Charles','Johnson','CJOHNSON','011.44.1644.','2008-01-04','SA_REP',  6200.00 , 0.10 ,149 ,  80 ),
							(180 ,' Winston','Taylor','WTAYLOR','650.507.9876','2006-01-24','SH_CLERK',  3200.00 , 0.00 ,120 ,  50 ),
							(181 ,' Jean','Fleaur','JFLEAUR','650.507.9877','2006-02-23','SH_CLERK',  3100.00 , 0.00 ,120 ,  50 ),
							(182 ,' Martha','Sullivan','MSULLIVA','650.507.9878','2007-06-21','SH_CLERK',  2500.00 , 0.00 ,120 ,  50 ),
							(183 ,' Girard','Geoni','GGEONI','650.507.9879','2008-02-03','SH_CLERK',  2800.00 , 0.00 ,120 ,  50 ),
							(184 ,' Nandita','Sarchand','NSARCHAN','650.509.1876','2004-01-27','SH_CLERK',  4200.00 , 0.00 ,121 ,  50 ),
							(185 ,' Alexis','Bull','ABULL','650.509.2876','2005-02-20','SH_CLERK',  4100.00 , 0.00 ,121 ,  50 ),
							(186 ,' Julia','Dellinger','JDELLING','650.509.3876','2006-06-24','SH_CLERK',  3400.00 , 0.00 ,121 ,  50 ),
							(187 ,' Anthony','Cabrio','ACABRIO','650.509.4876','2007-02-07','SH_CLERK',  3000.00 , 0.00 ,121 ,  50 ),
							(188 ,' Kelly','Chung','KCHUNG','650.505.1876','2005-06-14','SH_CLERK',  3800.00 , 0.00 ,122 ,  50 ),
							(189 ,' Jennifer','Dilly','JDILLY','650.505.2876','2005-08-13','SH_CLERK',  3600.00 , 0.00 ,122 ,  50 ),
							(190 ,' Timothy','Gates','TGATES','650.505.3876','2006-07-11','SH_CLERK',  2900.00 , 0.00 ,122 ,  50 ),
							(191 ,' Randall','Perkins','RPERKINS','650.505.4876','2007-12-19','SH_CLERK',  2500.00 , 0.00 ,122 ,  50 ),
							(192 ,' Sarah','Bell','SBELL','650.501.1876','2004-02-04','SH_CLERK',  4000.00 , 0.00 ,123 ,  50 ),
							(193 ,' Britney','Everett','BEVERETT','650.501.2876','2005-03-03','SH_CLERK',  3900.00 , 0.00 ,123 ,  50 ),
							(194 ,' Samuel','McCain','SMCCAIN','650.501.3876','2006-07-01','SH_CLERK',  3200.00 , 0.00 ,123 ,  50 ),
							(195 ,' Vance','Jones','VJONES','650.501.4876','2007-03-17','SH_CLERK',  2800.00 , 0.00 ,123 ,  50 ),
							(196 ,' Alana','Walsh','AWALSH','650.507.9811','2006-04-24','SH_CLERK',  3100.00 , 0.00 ,124 ,  50 ),
							(197 ,' Kevin','Feeney','KFEENEY','650.507.9822','2006-05-23','SH_CLERK',  3000.00 , 0.00 ,124 ,  50 ),
							(198 ,' Donald','OConnell','DOCONNEL','650.507.9833','2007-06-21','SH_CLERK',  2600.00 , 0.00 ,124 ,  50 ),
							(199 ,' Douglas','Grant','DGRANT','650.507.9844','2008-01-13','SH_CLERK',  2600.00 , 0.00 ,124 ,  50 ),
							(200 ,' Jennifer','Whalen','JWHALEN','515.123.4444','2003-09-17','AD_ASST',  4400.00 , 0.00 ,101 ,  10 ),
							(201 ,' Michael','Hartstein','MHARTSTE','515.123.5555','2004-02-17','MK_MAN', 13000.00 , 0.00 ,100 ,  20 ),
							(202 ,' Pat','Fay','PFAY','603.123.6666','2005-08-17','MK_REP',  6000.00 , 0.00 ,201 ,  20 ),
							(203 ,' Susan','Mavris','SMAVRIS','515.123.7777','2002-06-07','HR_REP',  6500.00 , 0.00 ,101 ,  40 ),
							(204 ,' Hermann','Baer','HBAER','515.123.8888','2002-06-07','PR_REP', 10000.00 , 0.00 ,101 ,  70 ),
							(205 ,' Shelley','Higgins','SHIGGINS','515.123.8080','2002-06-07','AC_MGR', 12008.00 , 0.00 ,101 , 110 ),
							(206 ,' William','Gietz','WGIETZ','515.123.8181','2002-06-07','AC_ACCOUNT',  8300.00 , 0.00 ,205 , 110 )
select* from employees
SELECT  FIRST_NAME+ ' ' +LAST_NAME AS Full_Name, salary from employees
where salary<6000

--2nd task in the Second page of Tasks 
select FIRST_NAME,LAST_NAME, DEPARTMENT_ID,salary from employees
where salary>8000

--3rd task in the Second page of Tasks
select FIRST_NAME,LAST_NAME, DEPARTMENT_ID from employees
where LAST_NAME='McEwen'

--4th task in the Second page of Tasks
select EMPLOYEE_ID , FIRST_NAME , LAST_NAME , EMAIL, PHONE_NUMBE, HIRE_DATE, JOB_ID, SALARY , COMMISSION_PCT , MANAGER_ID , DEPARTMENT_ID  from employees
where DEPARTMENT_ID is null

--5th task in the Second page of Tasks
create table  departments (DEPARTMENT_ID int, DEPARTMENT_NAME varchar(30), MANAGER_ID int, LOCATION_ID int)

insert into departments values (  10 ,'Administration',200 ,1700),
							   (  20 ,'Marketing',201 ,1800),
							   (  30 ,'Purchasing',114 ,1700),
							   (  40 ,'Human Resources',203 ,2400),
							   (  50 ,'Shipping',121 ,1500),
							   (  60 ,'IT',103 ,1400),
							   (  70 ,'Public Relations',204 ,2700),
							   (  80 ,'Sales',145 ,2500),
							   (  90 ,'Executive',100 ,1700),
							   ( 100 ,'Finance',108 ,1700),
							   ( 110 ,'Accounting',205 ,1700),
							   ( 120 ,'Treasury',  0 ,1700),
							   ( 130 ,'Corporate Tax',  0 ,1700),
							   ( 140 ,'Control And Credit',  0 ,1700),
							   ( 150 ,'Shareholder Services',  0 ,1700),
							   ( 160 ,'Benefits',  0 ,1700),
							   ( 170 ,'Manufacturing',  0 ,1700),
							   ( 180 ,'Construction',  0 ,1700),
							   ( 190 ,'Contracting',  0 ,1700),
							   ( 200 ,'Operations',  0 ,1700),
							   ( 210 ,'IT Support',  0 ,1700),
							   ( 220 ,'NOC',  0 ,1700),
							   ( 230 ,'IT Helpdesk',  0 ,1700),
							   ( 240 ,'Government Sales',  0 ,1700),
							   ( 250 ,'Retail Sales',  0 ,1700),
							   ( 260 ,'Recruiting',  0 ,1700),
							   ( 270 ,'Payroll',  0 ,1700)
select* from departments
select DEPARTMENT_ID, DEPARTMENT_NAME , MANAGER_ID , LOCATION_ID from departments
where DEPARTMENT_NAME='Marketing'


--6th task in the second page of Tasks
select* from employees
select FIRST_NAME+ ' ' +LAST_NAME AS Full_Name, HIRE_DATE, SALARY, DEPARTMENT_ID from employees
where FIRST_NAME not like '%M%'  order by DEPARTMENT_ID asc

--7th task in the second page of Tasks 
select* from employees

 SELECT * FROM employees Where salary BETWEEN 8000 AND 12000 
 AND commission_pct IS NOT NULL OR  department_id NOT IN (40 , 120 , 70)
  AND   hire_date < '1987-06-05'
      
--8th task in the second page of Tasks   
select FIRST_NAME+ ' ' + LAST_NAME as  Full_Name,salary from  employees
where COMMISSION_PCT is null

--9th task in the second page of Tasks  
select FIRST_NAME+ ' ' + LAST_NAME as Full_Name, PHONE_NUMBE + '-' + EMAIL As Contact_details, salary AS Remuneration from employees
where salary>=9000 and salary<=17000

--10th task in the second page of Tasks 
select* from employees 
select FIRST_NAME, LAST_NAME,Salary from employees 
where FIRST_NAME like '%m'

--11th task in the second page of Tasks 
select FIRST_NAME+ ' ' + LAST_NAME as Full_Name, salary from employees 
where salary not between 7000 and 15000 order by Full_Name asc

--12th task in the second page of Tasks 
select FIRST_NAME+ ' ' + LAST_NAME as Full_Name, HIRE_DATE ,JOB_ID from employees
where HIRE_DATE between '2007-11-05' and '2009-07-05'

--13th task in the second page of Tasks 
select FIRST_NAME+ ' ' + LAST_NAME as Full_Name, department_id from employees
where department_id in (70,90)

 --14th task in the second page of Tasks
 select FIRST_NAME+ ' ' + LAST_NAME as Full_Name, salary, MANAGER_ID from employees
 where MANAGER_ID is not null 

 --15th task in the second page of Tasks 
 select* from employees
 where HIRE_DATE<'2002-06-21'

 --16th task in the second page of Tasks 
 select FIRST_NAME, LAST_NAME, EMAIL, Salary,MANAGER_ID from employees
 where MANAGER_ID in (120, 103, 145)

 --17th task in the second page of Tasks 
 select* from employees
 where FIRST_NAME like '%D%'or FIRST_NAME like '%S%' or FIRST_NAME like '%N%' order by salary desc

 --18th task in the second page of Tasks 
 select FIRST_NAME+ ' ' + LAST_NAME as Full_Name, HIRE_DATE, COMMISSION_PCT, EMAIL+ '-' +PHONE_NUMBE as Contact_details, salary from employees
 where salary>11000 or PHONE_NUMBE like '_______3%' order by FIRST_NAME desc

 --19th task in the second page of Tasks
 select FIRST_NAME, LAST_NAME, department_id from employees
 where FIRST_NAME like '___s%'

 --20th task in the second page of Tasks 
 select EMPLOYEE_ID, FIRST_NAME, JOB_ID, department_id from employees 
 where department_id not in (50,30,80)

 --21st task in the second page of Tasks 
 select EMPLOYEE_ID, FIRST_NAME, JOB_ID, department_id from employees 
 where department_id in (30,40,90)

 --22nd task in the second page of Tasks 
 /* Apparently, we have not read these funtions which are required to solve this puzzle*/

 --23rd task in the second page of Tasks 
 /* Apparently, we have not read these funtions which are required to solve this puzzle*/

 --24th task in the second page of Tasks 
 /* Apparently, we have not read these funtions which are required to solve this puzzle*/

 --25th task in the second page of Tasks 
 create table locations (LOCATION_ID int, STREET_ADDRESS varchar(50), POSTAL_CODE varchar(25), CITY varchar(40), STATE_PROVINCE varchar(40),COUNTRY_ID varchar(2))

Insert into locations values (1000 ,'1297 Via Cola di Rie','989','Roma',    null           ,'IT'),
							 (1100 ,'93091 Calle della Testa','10934','Venice',    null			 ,'IT'),
							 (1200 ,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP'),
							 (1300 ,'9450 Kamiya-cho','6823','Hiroshima',	  null			 ,'JP'),
							 (1400 ,'2014 Jabberwocky Rd','26192','Southlake','Texas','US'),
							 (1500 ,'2011 Interiors Blvd','99236','South San Francisco','California','US'),
							 (1600 ,'2007 Zagora St','50090','South Brunswick','New Jersey','US'),
							 (1700 ,'2004 Charade Rd','98199','Seattle','Washington','US'),
							 (1800 ,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),
							 (1900 ,'6092 Boxwood St','YSW 9T2','Whitehorse',' Yukon','CA '),
							 (2000 ,'40-5-12 Laogianggen','190518','Beijing',     null          ,'CN'),
							 (2100 ,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN'),
							 (2200 ,'12-98 Victoria Street','2901','Sydney','New South Wales','AU'),
							 (2300 ,'198 Clementi North','540198','Singapore',	   null			 ,'SG'),
							 (2400 ,'8204 Arthur St','          ','London',	   null		     ,'UK'),
							 (2500 ,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK'),
							 (2600 ,'9702 Chester Road','9629850293','Stretford','Manchester','UK'),
							 (2700 ,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE'),
							 (2800 ,'Rua Frei Caneca 1360','01307-002','Sao Paulo','Sao Paulo','BR'),
							 (2900 ,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH'),
							 (3000 ,'Murtenstrasse 921','3095','Bern','BE','CH'),
							 (3100 ,'Pieter Breughelstraat 837','3029SK',' Utrecht','Utrecht','NL'),
							 (3200 ,'Mariano Escobedo 9991','11932',' Mexico City','Distrito Federal','MX')
 
 /* Apparently, we have not read these funtions which are required to solve this puzzle*/
 --27th task in the second page of Tasks 
 create table jobs ( JOB_ID varchar(15), JOB_TITLE varchar(50), MIN_SALARY int, MAX_SALARY int)

insert into jobs values ( 'AD_PRES   ',' President                       ',  20080 , 40000),
						( 'AD_VP     ',' Administration Vice President   ',  15000 , 30000),
						( 'AD_ASST   ',' Administration Assistant        ',   3000 ,  6000),
						( 'FI_MGR    ',' Finance Manager                 ',   8200 , 16000),
						( 'FI_ACCOUNT',' Accountant                      ',   4200 ,  9000),
						( 'AC_MGR    ',' Accounting Manager              ',   8200 , 16000),
						( 'AC_ACCOUNT',' Public Accountant               ',   4200 ,  9000),
						( 'SA_MAN    ',' Sales Manager                   ',  10000 , 20080),
						( 'SA_REP    ',' Sales Representative            ',   6000 , 12008),
						( 'PU_MAN    ',' Purchasing Manager              ',   8000 , 15000),
						( 'PU_CLERK  ',' Purchasing Clerk                ',   2500 ,  5500),
						( 'ST_MAN    ',' Stock Manager                   ',   5500 ,  8500),
						( 'ST_CLERK  ',' Stock Clerk                     ',   2008 ,  5000),
						( 'SH_CLERK  ',' Shipping Clerk                  ',   2500 ,  5500),
						( 'IT_PROG   ',' Programmer                      ',   4000 , 10000),
						( 'MK_MAN    ',' Marketing Manager               ',   9000 , 15000),
						( 'MK_REP    ',' Marketing Representative        ',   4000 ,  9000),
						( 'HR_REP    ',' Human Resources Representative  ',   4000 ,  9000),
						( 'PR_REP    ',' Public Relations Representative ',   4500 , 10500)

 select* from jobs order by job_title desc
 --28th task in the second page of Tasks 
 /* the question itself is given mistakenly, bcause the provided table does not contain profession in full*/

 --29th  task in the second page of Tasks
 /* Apparently, we have not read these funtions which are required to solve this puzzle*/

 --30th task in the second page of Tasks
 /* Apparently, we have not read these funtions which are required to solve this puzzle*/

 --31st task in the second page of Tasks
 /* Apparently, we have not read these funtions which are required to solve this puzzle*/

 --32th task in the second page of Tasks
 /* Apparently, we have not read these funtions which are required to solve this puzzle*/

  --33rd task in the second page of Tasks
 select* from employees 
 where COMMISSION_PCT is null and salary between 7000 and 12000 and DEPARTMENT_ID in (50)

 --34th task in the second page of Tasks
 /* Apparently, we have not read these funtions which are required to solve this puzzle*/

 --35th task in the second page of Tasks
 /* Apparently, we have not read these funtions which are required to solve this puzzle*/

 --36th task in the second page of Tasks
 select FIRST_NAME, LAST_NAME from employees 
 where FIRST_NAME like '_D%' or LAST_NAME like 'D%'

 --37th task in the second page of Tasks
 /* Apparently, we have not read these funtions which are required to solve this puzzle*/

 --38th task in the second page of Tasks
 select* from employees 
 where HIRE_DATE>'1987-09-07'