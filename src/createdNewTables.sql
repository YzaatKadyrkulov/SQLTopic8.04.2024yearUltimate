create table students
(
    id         serial primary key ,
    first_name varchar not null ,
    last_name  varchar,
    age        int,
    email varchar unique,
    course_id int references courses(id)

);


create table courses
(
    id serial primary key ,
    course_name varchar,
    price int
);

alter table courses add column description varchar;
alter table courses rename course_name to name;
alter table courses drop column description;
alter table courses alter column name set not null;

insert into courses(name, price)
values ('Java',14000),
       ('Js',14000);

insert into students(first_name, last_name, age, email, course_id)
values('Sabina','Zikirdinova',18,'sabina@gmail.com',1),
      ('Beknazar','Joldoshev',16,'beknazar@gmail.com',1);

drop table students;