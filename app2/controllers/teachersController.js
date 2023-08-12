// controllers/teachersController.js

const db = require('../models/teacherModel');

exports.getTeachers = (req, res) => {
    db.getTeachers((err, results) => {
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
        res.render('index', { teachers: results });
      }
    });
  };


exports.addTeacher = (req, res) => {
  const { name, email, mobile, address } = req.body;
  const steacher = { name, email, mobile, address };

  db.addTeachers(teacher, (err, result) => {
    if (err) {
      throw err;
    }
    res.send('Teacher details added successfully');
  });
};

exports.updateTeacher= (req, res) => {
  const { name, email, mobile, address } = req.body;
  const teacher = { name, email, mobile, address };
  const teacherId = req.params.id;

  db.updateTeachers(teacherId, teacher, (err, result) => {
    if (err) {
      throw err;
    }
    res.send('Teacher details updated successfully');
  });
};
