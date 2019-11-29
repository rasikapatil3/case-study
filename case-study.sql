create table users(
    id int(11) primary key,
    name varchar(50),
    email varchar(50),
    phone varchar(15),
    password varchar(50),
    role int
);


create table payments(
    id int primary key,
    userid int,
    amount float,
    type varchar(20),
    transaction_time DATETIME,
    nextpayment_duedate DATETIME,
    FOREIGN KEY (userid) REFERENCES users(id)
);

create table books(
    id int primary key,
    name varchar(50),
    author varchar(50),
    subject varchar (50),
    price float,
    isbn int
);


create table copies(
    id int primary key,
    bookid int ,
    rack int,
    status varchar(50),
    FOREIGN KEY (bookid) REFERENCES books(id)
);


create table issuerecord(
    id int primary key,
    copyid int,
    memberid int,
    issue_date DATETIME,
    return_duedate DATETIME,
    return_date DATETIME,
    fine_amount float,
    FOREIGN KEY (copyid) REFERENCES copies(id),
    FOREIGN KEY (memberid) REFERENCES users(id)
);