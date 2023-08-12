#!/bin/bash

export USER=admin
export PASS=Asdfg1234$%

# Login to MySQL
mysql -u$USER -p$PASS -h azrdsnmysql001.mysql.database.azure.com << EOF


USE students;
CREATE TABLE IF NOT EXISTS `students` (
    `id` int(5) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `address` varchar(255) NOT NULL,
    `mobile` int(16) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

INSERT INTO `students` (`name`,`email`,`address`,`mobile`)
VALUES
  ("rasheed", "rasheedpri@gmail.com", 'Chettippadi',96565);

EOF