create user 'ubipong'@'%' identified by 'secret';

create database ubipong;

grant usage on *.* to 'ubipong'@'%';
grant all privileges on ubipong.* to 'ubipong'@'%' with grant option;

flush privileges;
