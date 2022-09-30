create table Hospital(
Patient_id int,
P_First_name varchar(255),
P_Last_name varchar(255),
Age int,
Gender varchar(255),
Disease_Specification varchar(255));

select * from hospital;

insert  into hospital
values (1,"Preeti","Mukharhji",30,"Female","General"),
(2,"Sona","Thakur",30,"Female","Physician"),
(3,"Preet","Ahuja",30,"Male","General"),
(4,"Kartik","Pillai",25,"Male","Dermac"),
(5,"Priya","Thankur",29,"Female","Gynecologist"),
(6,"Mayuri","Mukharhji",30,"Female","Gynecologist"),
(7,"Punit","Pawar",23,"Male","General"),
(8,"Supriya","Mennon",23,"Female","Endocrinologist"),
(9,"Sonal","Ahuja",28,"Female","ENT"),
(10,"Mayur","Dalvi",30,"Male","Pediatrician"),
(11,"Akshay","Mukharhji",35,"Male","General"),
(12,"Siddhant","Patil",29,"Male","Orthopedist"),
(13,"Swapnil","Keni",40,"Male","General"),
(14,"Mandar","Pawar",25,"Male","Neonatologist"),
(15,"Priya","Mukharhji",38,"Female","ENT"),
(16,"Shivangi","Bhoir",15,"Female"," Neurologist"),
(17,"Aditi","Mukharhji",25,"Female","Gynecologist"),
(18,"Kirti","Dalvi",37,"Female","Rheumatologist"),
(19,"Mayur","Mennon",33,"Male","General"),
(20,"Siddhant","Kadam",42,"Male"," Cardiologist"),
(21,"Preeti","Kapoor",50,"Female","General"),
(22,"Punit","Thakur",25,"Male","Dermac"),
(23,"Aditi","Ahuja",35,"Female","Gynecologist"),
(24,"Preeti","Pawar",47,"Female","General"),
(25,"Rui","Mane",28,"Female","Pediatrician"),
(26,"Swapnil","Pillai",19,"Male","Orthopedist"),
(27,"Siddhant","Mukharhji",16,"Male","General"),
(28,"Shivangi","Mennon",23,"Female","Gynecologist"),
(29,"Preeti","Rane",55,"Female","General"),
(30,"Supriya","Pawar",35,"Female","Dermac"),
(31,"Akshay","Kapoor",30,"Male","Orthopedist"),
(32,"Preeti","Thakur",26,"Female","General"),
(33,"Aditi","Tawade",19,"Female","Pediatrician"),
(34,"Shivangi","Ahuja",24,"Female","Gynecologist"),
(35,"Kartik","Mukharhji",30,"Male","General"),
(36,"Preeti","Kadam",35,"Female","Neonatologist"),
(37,"Akshay","Mennon",28,"Male","Dermac"),
(38,"Preeti","Gaikwad",53,"Female","General"),
(30,"Abhishek","Dalvi",39,"Male","General"),
(40,"Swapnil","Sonai",24,"Male","Endocrinologist"),
(41,"Siddhant","Thakur",33,"Male","General"),
(42,"Kirti","More",31,"Female","Gynecologist"),
(43,"Punit","Pillai",49,"Male","Endocrinologist"),
(44,"Mayur","Ahuja",27,"Male","General"),
(45,"Kirti","Pawar",28,"Female","Gynecologist"),
(46,"Kartik","Kadam",40,"Male","Neonatologist"),
(47,"Mandar","Mane",55,"Male","General"),
(48,"Shivangi","Pillai",34,"Female","Dermac"),
(49,"Swapnil","Sigh",30,"Male","Endocrinologist"),
(50,"Shreeya","Thakur",29,"Female","Orthopedist");

create table Accounts(
Patient_id int,
Gender varchar(255),
Fee_Paid int,
Balance_Ammount int,
Status_Descharged_Admit varchar(255));

Select * from accounts;

insert into accounts
values (1,"Female",2000,0,"Yes"),
(2,"Female",600,0,"Yes"),
(3,"Male",1000,500,"Yes"),
(4,"Male",2000,0,"Yes"),
(5,"Female",2500,0,"Yes"),
(6,"Female",2000,0,"No"),
(7,"Male",900,0,"Yes"),
(8,"Female",2700,0,"Yes"),
(9,"Male",2000,0,"Yes"),
(10,"Female",3000,600,"Yes"),
(11,"Male",2000,0,"Yes"),
(12,"Female",500,0,"Yes"),
(13,"Female",2000,0,"No"),
(14,"Male",2000,500,"Yes"),
(15,"Female",900,0,"Yes"),
(16,"Female",3500,0,"Yes"),
(17,"Male",500,0,"Yes"),
(18,"Female",2000,500,"Yes"),
(19,"Male",2500,0,"No"),
(20,"Male",2000,0,"Yes"),
(21,"Female",500,0,"Yes"),
(22,"Female",3500,500,"Yes"),
(23,"Female",1000,0,"Yes"),
(24,"Male",2500,0,"Yes"),
(25,"Male",2000,0,"Yes"),
(26,"Male",900,0,"Yes"),
(27,"Female",1000,300,"Yes"),
(28,"Female",2000,0,"Yes"),
(29,"Male",3300,0,"No"),
(30,"Female",2000,500,"Yes"),
(31,"Female",500,0,"Yes"),
(32,"Male",3000,0,"Yes"),
(33,"Female",1000,300,"Yes"),
(34,"Male",2000,0,"Yes"),
(35,"Female",2000,500,"Yes"),
(36,"Male",2500,0,"Yes"),
(37,"Female",2000,1000,"Yes"),
(38,"Male",3500,0,"Yes"),
(39,"Male",500,0,"Yes"),
(40,"Female",900,0,"Yes"),
(41,"Female",2500,500,"Yes"),
(42,"Male",2000,0,"No"),
(43,"Male",500,0,"Yes"),
(44,"Female",1000,0,"Yes"),
(45,"Female",900,0,"Yes"),
(46,"Male",2500,0,"Yes"),
(47,"Female",500,0,"Yes"),
(48,"Male",2000,500,"Yes"),
(49,"Male",1000,0,"Yes"),
(50,"Female",2500,0,"No");

select * from accounts;

select count(patient_id) from hospital;

Select max(fee_paid) from accounts; 

Select sum(fee_paid) from accounts; 

select P_first_name, P_last_name, concat(P_first_name,"",P_last_name) as Full_Name from hospital;

Select * from hospital limit 25;

Select upper(p_first_name) from hospital;

Select p_first_name from hospital where P_last_name="Mane";	

select hospital.P_first_name, hospital.P_Last_name, accounts.Patient_id
from hospital
inner join accounts
on  hospital.Patient_id=accounts.Patient_id;

select hospital.P_first_name, hospital.P_Last_name, hospital.age, hospital.gender, hospital.Disease_Specification, accounts.Patient_id
from hospital
left join accounts
on  hospital.Patient_id=accounts.Patient_id;

select hospital.Patient_id, accounts.Gender, accounts.Fee_Paid, accounts.Balance_Ammount, accounts.Status_Descharged_Admit
from hospital
Right join accounts
on  hospital.Patient_id=accounts.Patient_id;

create view balance_ammount as
select balance_ammount
from accounts where Balance_Ammount >0 ;

Select * from hospital limit 10;

select p_first_name, P_last_name from hospital order by P_last_name;

Select P_first_name, P_last_name from hospital order by P_last_name desc;

Select P_first_name, length(P_first_name), P_last_name, length(P_last_name) from hospital;

Select P_first_name, P_last_name from hospital where P_first_name like "p%";

Select P_first_name, P_last_name from hospital where P_first_name like "%a";

Select * from Hospital where P_first_name in ('Preeti','Mandar','Akahay');

select distinct P_last_name from hospital;