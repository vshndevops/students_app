#!/bin/bash

export USER=admin
export PASS=Asdfg1234$%

# Login to MySQL
mysql -u$USER -p$PASS -h schoolapp.cyxbau1cwuxn.us-east-1.rds.amazonaws.com << EOF

CREATE DATABASE teachers;
USE teachers;
CREATE TABLE IF NOT EXISTS teachers (
    id int(5) NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    mobile int(15) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

EOF