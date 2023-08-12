// models/studentModel.js

const db = require('mysql');

const connection = db.createConnection({
  host: 'schoolapp.cyxbau1cwuxn.us-east-1.rds.amazonaws.com',
  user: 'admin',
  password: 'Asdfg1234$%',
  database: 'students'
});

connection.connect((err) => {
  if (err) {
    throw err;
  }
  console.log('Connected to MySQL database');
});

exports.getTeachers = (callback) => {
  connection.query('SELECT * FROM teachers', callback);
};

exports.addTeacher = (teacher, callback) => {
  connection.query('INSERT INTO teachers SET ?', teacher, callback);
};

// exports.updateStudent = (studentId, student, callback) => {
//   connection.query('UPDATE students SET ? WHERE id = ?', [student, studentId], callback);
// };


exports.updateTeacher = (teacherId, teacher, callback) => {
    const { name, email, mobile, address } = teacher;
  
    // Build the update object dynamically
    const updateData = {};
    if (name) updateData.name = name;
    if (email) updateData.email = email;
    if (mobile) updateData.mobile = mobile;
    if (address) updateData.address = address;
  
    connection.query('UPDATE teachers SET ? WHERE id = ?', [updateData, teacherId], callback);
  };
  