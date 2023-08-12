#!/bin/bash

export USER=admin
export PASS=Asdfg1234$%

# Login to MySQL
mysql -u$USER -p$PASS -h azrdsnmysql001.mysql.database.azure.com << EOF


USE students;

INSERT INTO `students` (`name`,`email`,`address`,`mobile`)
VALUES
  ("rasheedmon", "rasheedmon@gmail.com", 'Chettippadi',96565);

EOF