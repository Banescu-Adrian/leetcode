create table person (
    personId int NOT NULL,
    lastName varchar(255) NOT NULL,
    firstName varchar(255) NOT NULL,
    UNIQUE(personId),

);

create table address (
    addressId int NOT NULL,
    personId int NOT NULL,
    city varchar(255),
    state varchar(255),
    FOREIGN KEY (personId) REFERENCES person(personId),
    UNIQUE(addressId)
);

