
    alter table Employee 
        drop constraint FK_12v0w2dqasbw95xtn8qc2uj83;

    drop table ABTEILUNG if exists;

    drop table Employee if exists;

    create table ABTEILUNG (
        OID bigint generated by default as identity (start with 1),
        gender varchar(255),
        name varchar(255) not null,
        primary key (OID)
    );

    create table Employee (
        OID bigint generated by default as identity (start with 1),
        name varchar(81) not null,
        FK_department bigint,
        primary key (OID)
    );

    alter table Employee 
        add constraint FK_12v0w2dqasbw95xtn8qc2uj83 
        foreign key (FK_department) 
        references ABTEILUNG;
