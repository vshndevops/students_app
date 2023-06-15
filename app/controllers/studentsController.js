// controllers/studentsController.js

const db = require('../models/studentModel');

exports.getStudents = (req, res) => {
    db.getStudents((err, results) => {
      if (err) {
        throw err;
      }
      
      // Check request headers to determine the response format
      const acceptHeader = req.headers.accept;
      if (acceptHeader && acceptHeader.toLowerCase() === 'application/json') {
        // If the request accepts JSON, send the response as JSON
        res.json(results);
      } else {
        // Otherwise, render the response using the HTML view
        res.render('index', { students: results });
      }
    });
  };


exports.addStudent = (req, res) => {
  const { name, email, mobile, address } = req.body;
  const student = { name, email, mobile, address };

  db.addStudent(student, (err, result) => {
    if (err) {
      throw err;
    }
    res.send('Student details added successfully');
  });
};

exports.updateStudent = (req, res) => {
  const { name, email, mobile, address } = req.body;
  const student = { name, email, mobile, address };
  const studentId = req.params.id;

  db.updateStudent(studentId, student, (err, result) => {
    if (err) {
      throw err;
    }
    res.send('Student details updated successfully');
  });
};
