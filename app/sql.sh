#!/bin/bash

export USER=admin
export PASS=Asdfg1234$%

# Login to MySQL
mysql -u$USER -p$PASS -h students.cyxbau1cwuxn.us-east-1.rds.amazonaws.com << EOF


# Create database
CREATE DATABASE socka;


# Use the database
USE socka;

# Create table
CREATE TABLE players (
  id int(5) NOT NULL AUTO_INCREMENT,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  position varchar(255) NOT NULL,
  number int(11) NOT NULL,
  image varchar(255) NOT NULL,
  user_name varchar(20) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

EOF