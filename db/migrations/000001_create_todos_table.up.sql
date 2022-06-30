create table if not exists todos(
    id int(10) primary key ,
    name text not null,
    completed int(1) default 0
);